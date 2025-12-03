@interface THWReviewInfo
- (THWReviewInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style stageGeometry:(id)stageGeometry;
- (id)childEnumerator;
- (id)questionAtIndex:(unint64_t)index;
- (void)addQuestion:(id)question;
- (void)dealloc;
- (void)updateWithUniqueID:(id)d contentNodeGUID:(id)iD;
@end

@implementation THWReviewInfo

- (THWReviewInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style stageGeometry:(id)stageGeometry
{
  v10.receiver = self;
  v10.super_class = THWReviewInfo;
  v8 = [(THWReviewInfo *)&v10 initWithContext:context geometry:geometry];
  if (v8)
  {
    v8->_style = style;
    v8->_stageGeometry = stageGeometry;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewInfo;
  [(THWReviewInfo *)&v3 dealloc];
}

- (void)addQuestion:(id)question
{
  if (question)
  {
    questions = self->_questions;
    if (!questions)
    {
      questions = objc_alloc_init(NSMutableArray);
      self->_questions = questions;
    }

    [(NSMutableArray *)questions addObject:question];
  }
}

- (id)questionAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_questions count]<= index)
  {
    return 0;
  }

  questions = self->_questions;

  return [(NSMutableArray *)questions objectAtIndex:index];
}

- (void)updateWithUniqueID:(id)d contentNodeGUID:(id)iD
{
  v7 = [NSString alloc];
  self->_reviewID = [v7 initWithFormat:@"%@%@:%@", kTHWReviewWidgetInfoIDPrefix, iD, d];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_questions;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v13 + 1) + 8 * i) setQuestionID:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@:%@:%lu", kTHWReviewWidgetInfoQuestionDescriptionIDPrefix, iD, d, -[NSMutableArray indexOfObjectIdenticalTo:](self->_questions, "indexOfObjectIdenticalTo:", *(*(&v13 + 1) + 8 * i)))}];
      }

      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)childEnumerator
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_adornmentInfo)
  {
    [v3 addObject:?];
  }

  return [v4 objectEnumerator];
}

@end
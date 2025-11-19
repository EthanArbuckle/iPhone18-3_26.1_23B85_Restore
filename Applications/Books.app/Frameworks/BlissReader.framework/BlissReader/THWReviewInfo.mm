@interface THWReviewInfo
- (THWReviewInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 stageGeometry:(id)a6;
- (id)childEnumerator;
- (id)questionAtIndex:(unint64_t)a3;
- (void)addQuestion:(id)a3;
- (void)dealloc;
- (void)updateWithUniqueID:(id)a3 contentNodeGUID:(id)a4;
@end

@implementation THWReviewInfo

- (THWReviewInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 stageGeometry:(id)a6
{
  v10.receiver = self;
  v10.super_class = THWReviewInfo;
  v8 = [(THWReviewInfo *)&v10 initWithContext:a3 geometry:a4];
  if (v8)
  {
    v8->_style = a5;
    v8->_stageGeometry = a6;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewInfo;
  [(THWReviewInfo *)&v3 dealloc];
}

- (void)addQuestion:(id)a3
{
  if (a3)
  {
    questions = self->_questions;
    if (!questions)
    {
      questions = objc_alloc_init(NSMutableArray);
      self->_questions = questions;
    }

    [(NSMutableArray *)questions addObject:a3];
  }
}

- (id)questionAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_questions count]<= a3)
  {
    return 0;
  }

  questions = self->_questions;

  return [(NSMutableArray *)questions objectAtIndex:a3];
}

- (void)updateWithUniqueID:(id)a3 contentNodeGUID:(id)a4
{
  v7 = [NSString alloc];
  self->_reviewID = [v7 initWithFormat:@"%@%@:%@", kTHWReviewWidgetInfoIDPrefix, a4, a3];
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

        [*(*(&v13 + 1) + 8 * i) setQuestionID:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@:%@:%lu", kTHWReviewWidgetInfoQuestionDescriptionIDPrefix, a4, a3, -[NSMutableArray indexOfObjectIdenticalTo:](self->_questions, "indexOfObjectIdenticalTo:", *(*(&v13 + 1) + 8 * i)))}];
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
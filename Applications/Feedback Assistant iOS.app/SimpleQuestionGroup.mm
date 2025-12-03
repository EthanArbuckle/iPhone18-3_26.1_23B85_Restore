@interface SimpleQuestionGroup
- (SimpleQuestionGroup)initWithQuestionGroup:(id)group questionAnswerPairs:(id)pairs;
- (id)allAnswers;
- (id)allQuestions;
- (id)answerInRow:(unint64_t)row;
- (id)description;
- (id)questionInRow:(unint64_t)row;
@end

@implementation SimpleQuestionGroup

- (SimpleQuestionGroup)initWithQuestionGroup:(id)group questionAnswerPairs:(id)pairs
{
  groupCopy = group;
  pairsCopy = pairs;
  v11.receiver = self;
  v11.super_class = SimpleQuestionGroup;
  v8 = [(SimpleQuestionGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SimpleQuestionGroup *)v8 setQuestionGroup:groupCopy];
    [(SimpleQuestionGroup *)v9 setQuesionAnswerPairs:pairsCopy];
  }

  return v9;
}

- (id)allAnswers
{
  v3 = [NSMutableArray alloc];
  quesionAnswerPairs = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [v3 initWithCapacity:{objc_msgSend(quesionAnswerPairs, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  quesionAnswerPairs2 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v7 = [quesionAnswerPairs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(quesionAnswerPairs2);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"a"];
        [v5 addObject:v11];
      }

      v8 = [quesionAnswerPairs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)allQuestions
{
  v3 = [NSMutableArray alloc];
  quesionAnswerPairs = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [v3 initWithCapacity:{objc_msgSend(quesionAnswerPairs, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  quesionAnswerPairs2 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v7 = [quesionAnswerPairs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(quesionAnswerPairs2);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"q"];
        [v5 addObject:v11];
      }

      v8 = [quesionAnswerPairs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)questionInRow:(unint64_t)row
{
  quesionAnswerPairs = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [quesionAnswerPairs objectAtIndexedSubscript:row];
  v6 = [v5 objectForKeyedSubscript:@"q"];

  return v6;
}

- (id)answerInRow:(unint64_t)row
{
  quesionAnswerPairs = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [quesionAnswerPairs objectAtIndexedSubscript:row];
  v6 = [v5 objectForKeyedSubscript:@"a"];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  questionGroup = [(SimpleQuestionGroup *)self questionGroup];
  quesionAnswerPairs = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v6 = [NSString stringWithFormat:@"-------------------------\r(%@)\r%@\r%@", v3, questionGroup, quesionAnswerPairs];

  return v6;
}

@end
@interface SimpleQuestionGroup
- (SimpleQuestionGroup)initWithQuestionGroup:(id)a3 questionAnswerPairs:(id)a4;
- (id)allAnswers;
- (id)allQuestions;
- (id)answerInRow:(unint64_t)a3;
- (id)description;
- (id)questionInRow:(unint64_t)a3;
@end

@implementation SimpleQuestionGroup

- (SimpleQuestionGroup)initWithQuestionGroup:(id)a3 questionAnswerPairs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SimpleQuestionGroup;
  v8 = [(SimpleQuestionGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SimpleQuestionGroup *)v8 setQuestionGroup:v6];
    [(SimpleQuestionGroup *)v9 setQuesionAnswerPairs:v7];
  }

  return v9;
}

- (id)allAnswers
{
  v3 = [NSMutableArray alloc];
  v4 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"a"];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)allQuestions
{
  v3 = [NSMutableArray alloc];
  v4 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"q"];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)questionInRow:(unint64_t)a3
{
  v4 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 objectForKeyedSubscript:@"q"];

  return v6;
}

- (id)answerInRow:(unint64_t)a3
{
  v4 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 objectForKeyedSubscript:@"a"];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(SimpleQuestionGroup *)self questionGroup];
  v5 = [(SimpleQuestionGroup *)self quesionAnswerPairs];
  v6 = [NSString stringWithFormat:@"-------------------------\r(%@)\r%@\r%@", v3, v4, v5];

  return v6;
}

@end
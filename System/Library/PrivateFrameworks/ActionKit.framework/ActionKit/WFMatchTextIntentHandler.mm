@interface WFMatchTextIntentHandler
- (void)handleMatchText:(id)text completion:(id)completion;
- (void)resolveCaseSensitiveForMatchText:(id)text withCompletion:(id)completion;
- (void)resolvePatternForMatchText:(id)text withCompletion:(id)completion;
- (void)resolveTextForMatchText:(id)text withCompletion:(id)completion;
@end

@implementation WFMatchTextIntentHandler

- (void)handleMatchText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v7 = objc_opt_new();
  text = [textCopy text];
  pattern = [textCopy pattern];
  caseSensitive = [textCopy caseSensitive];
  bOOLValue = [caseSensitive BOOLValue];

  if ([text length])
  {
    v35 = 0;
    v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:pattern options:bOOLValue ^ 1u error:&v35];
    v13 = v35;
    v14 = v13;
    if (!v12)
    {
      v29 = [[WFMatchTextIntentResponse alloc] initWithCode:100 userActivity:0];
      localizedDescription = [(WFMatchTextIntentResponse *)v14 localizedDescription];
      [(WFMatchTextIntentResponse *)v29 setErrorDescription:localizedDescription];

      completionCopy[2](completionCopy, v29);
      goto LABEL_9;
    }

    v32 = v13;
    v33 = pattern;
    v34 = completionCopy;
    v31 = v12;
    v15 = [v12 matchesInString:text options:0 range:{0, objc_msgSend(text, "length")}];
    if ([v15 count])
    {
      v16 = 0;
      do
      {
        v17 = [v15 objectAtIndexedSubscript:v16];
        range = [v17 range];
        v20 = [text substringWithRange:{range, v19}];
        v21 = [WFTextMatch alloc];
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v24 = [(WFTextMatch *)v21 initWithIdentifier:uUIDString displayString:v20];

        text2 = [textCopy text];
        [(WFTextMatch *)v24 setText:text2];

        pattern2 = [textCopy pattern];
        [(WFTextMatch *)v24 setPattern:pattern2];

        caseSensitive2 = [textCopy caseSensitive];
        [(WFTextMatch *)v24 setCaseSensitive:caseSensitive2];

        v28 = [MEMORY[0x277CCABB0] numberWithInt:v16];
        [(WFTextMatch *)v24 setIndex:v28];

        [v7 addObject:v24];
        ++v16;
      }

      while ([v15 count] > v16);
    }

    pattern = v33;
    completionCopy = v34;
  }

  v14 = [[WFMatchTextIntentResponse alloc] initWithCode:4 userActivity:0];
  [(WFMatchTextIntentResponse *)v14 setMatches:v7];
  completionCopy[2](completionCopy, v14);
LABEL_9:
}

- (void)resolveTextForMatchText:(id)text withCompletion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  text = [textCopy text];

  v7 = MEMORY[0x277CD4218];
  if (text)
  {
    text2 = [textCopy text];
    v9 = [v7 successWithResolvedString:text2];
    completionCopy[2](completionCopy, v9);

    completionCopy = v9;
  }

  else
  {
    text2 = [MEMORY[0x277CD4218] needsValue];
    completionCopy[2](completionCopy, text2);
  }
}

- (void)resolvePatternForMatchText:(id)text withCompletion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  pattern = [textCopy pattern];

  v7 = MEMORY[0x277CD4218];
  if (pattern)
  {
    pattern2 = [textCopy pattern];
    v9 = [v7 successWithResolvedString:pattern2];
    completionCopy[2](completionCopy, v9);

    completionCopy = v9;
  }

  else
  {
    pattern2 = [MEMORY[0x277CD4218] needsValue];
    completionCopy[2](completionCopy, pattern2);
  }
}

- (void)resolveCaseSensitiveForMatchText:(id)text withCompletion:(id)completion
{
  v6 = MEMORY[0x277CD3AB8];
  completionCopy = completion;
  caseSensitive = [text caseSensitive];
  v8 = [v6 successWithResolvedValue:{objc_msgSend(caseSensitive, "BOOLValue")}];
  (*(completion + 2))(completionCopy, v8);
}

@end
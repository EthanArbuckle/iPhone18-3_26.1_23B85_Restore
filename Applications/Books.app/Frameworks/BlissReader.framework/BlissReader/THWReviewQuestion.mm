@interface THWReviewQuestion
- (BOOL)p_referenceContentIsImage;
- (CGSize)imageSize;
- (CGSize)referenceContentSize;
- (Class)evaluatorClass;
- (Class)layoutClass;
- (THWReviewQuestion)initWithContext:(id)context type:(int)type text:(BOOL)text numberOfChoices:(unint64_t)choices titleAccessibilityDescription:(id)description imageAccessibilityDescription:(id)accessibilityDescription;
- (TSDImageInfo)imageInfo;
- (id)choiceAtIndex:(unint64_t)index;
- (id)p_defaultListLabelParagraphStyleFromStyle:(id)style;
- (int)cardinality;
- (int)evaluateAnswerWithResponseController:(id)controller updateScore:(BOOL)score choiceBlock:(id)block;
- (int)imagePlacement;
- (void)addChoice:(id)choice;
- (void)dealloc;
- (void)p_ensureChoicesAreValid;
- (void)setQuestionID:(id)d;
@end

@implementation THWReviewQuestion

- (THWReviewQuestion)initWithContext:(id)context type:(int)type text:(BOOL)text numberOfChoices:(unint64_t)choices titleAccessibilityDescription:(id)description imageAccessibilityDescription:(id)accessibilityDescription
{
  v17.receiver = self;
  v17.super_class = THWReviewQuestion;
  v14 = [(THWReviewQuestion *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    v14->_text = text;
    v14->_cardinality = 0;
    v14->_context = context;
    v14->_numberOfChoices = choices;
    v14->_titleAccessibilityDescription = [description copy];
    v15->_imageAccessibilityDescription = [accessibilityDescription copy];
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewQuestion;
  [(THWReviewQuestion *)&v3 dealloc];
}

- (BOOL)p_referenceContentIsImage
{
  referenceContentType = [(THWReviewQuestion *)self referenceContentType];
  if (![(THWReviewQuestion *)self referenceContent]|| !referenceContentType)
  {
    return 0;
  }

  v4 = TSWReviewQuestionDescriptionReferenceContentTypeImageValue;

  return [(NSString *)referenceContentType isEqual:v4];
}

- (TSDImageInfo)imageInfo
{
  if (!self->_imageInfo && [(THWReviewQuestion *)self p_referenceContentIsImage])
  {
    v3 = [[TSDMediaStyle alloc] initWithContext:-[THWReviewQuestion context](self name:"context") overridePropertyMap:0 isVariation:{0, 0}];
    v4 = [[TSDImageInfo alloc] initWithContext:-[THWReviewQuestion context](self geometry:"context") style:0 imageData:v3 originalImageData:{-[THWReviewQuestion referenceContent](self, "referenceContent"), 0}];
    self->_imageInfo = v4;
    [(TSDImageInfo *)v4 setAccessibilityDescription:self->_imageAccessibilityDescription];
    [(TSDImageInfo *)self->_imageInfo setLocked:1];
  }

  return self->_imageInfo;
}

- (int)imagePlacement
{
  result = [(THWReviewQuestion *)self p_referenceContentIsImage];
  if (result)
  {

    return [(THWReviewQuestion *)self referenceContentPlacement];
  }

  return result;
}

- (CGSize)imageSize
{
  if ([(THWReviewQuestion *)self p_referenceContentIsImage])
  {
    [(THWReviewQuestion *)self referenceContentSize];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)p_defaultListLabelParagraphStyleFromStyle:(id)style
{
  v4 = [-[TSWPStorage paragraphStyleAtParIndex:effectiveRange:](self->_prompt paragraphStyleAtParIndex:0 effectiveRange:{0), "valueForProperty:", 16}];
  if (!v4)
  {
    v4 = [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{20.0), "fontName"}];
  }

  v5 = +[TSSPropertyMap propertyMap];
  LODWORD(v6) = 20.0;
  [v5 setFloatValue:17 forProperty:v6];
  [v5 setObject:v4 forProperty:16];
  stylesheet = [style stylesheet];

  return [stylesheet variationOfStyle:style propertyMap:v5];
}

- (void)p_ensureChoicesAreValid
{
  if (self->_type == 1)
  {
    selfCopy = self;
    v3 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    choices = selfCopy->_choices;
    v5 = [(NSMutableArray *)choices countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v20 = selfCopy;
      v7 = 0;
      v8 = 0;
      v9 = *v26;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(choices);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          contentStorage = [v11 contentStorage];
          if (contentStorage)
          {
            v13 = [contentStorage paragraphStyleAtParIndex:0 effectiveRange:0];
            v14 = v13;
            if (!v7)
            {
              v7 = v13;
            }

            overridePropertyMap = [v13 overridePropertyMap];
            if ([overridePropertyMap containsProperty:16] && (objc_msgSend(overridePropertyMap, "containsProperty:", 17) & 1) != 0)
            {
              if (!v8)
              {
                v8 = v14;
              }
            }

            else
            {
              [v3 addObject:v11];
            }
          }
        }

        v6 = [(NSMutableArray *)choices countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
      selfCopy = v20;
      if (![v3 count])
      {
        goto LABEL_31;
      }

      if (v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (![v3 count])
      {
LABEL_31:

        return;
      }

      v7 = 0;
    }

    v8 = [(THWReviewQuestion *)selfCopy p_defaultListLabelParagraphStyleFromStyle:v7];
LABEL_24:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v3);
          }

          [objc_msgSend(*(*(&v21 + 1) + 8 * j) "contentStorage")];
        }

        v17 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    goto LABEL_31;
  }
}

- (void)addChoice:(id)choice
{
  if (choice)
  {
    choices = self->_choices;
    if (!choices)
    {
      choices = [[NSMutableArray alloc] initWithCapacity:self->_numberOfChoices];
      self->_choices = choices;
    }

    [(NSMutableArray *)choices addObject:choice];
    if ([(NSMutableArray *)self->_choices count]== self->_numberOfChoices)
    {

      [(THWReviewQuestion *)self p_ensureChoicesAreValid];
    }
  }
}

- (id)choiceAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_choices count]<= index)
  {
    return 0;
  }

  choices = self->_choices;

  return [(NSMutableArray *)choices objectAtIndex:index];
}

- (void)setQuestionID:(id)d
{
  questionID = self->_questionID;
  if (questionID != d)
  {

    self->_questionID = [d copy];
  }
}

- (int)cardinality
{
  result = self->_cardinality;
  if (!result)
  {
    type = self->_type;
    if (type == 2)
    {
      result = 3;
    }

    else
    {
      if (type != 1)
      {
        return 0;
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      choices = self->_choices;
      v6 = [(NSMutableArray *)choices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v13;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(choices);
            }

            [*(*(&v12 + 1) + 8 * i) fraction];
            if (v11 > 0.0)
            {
              ++v8;
            }
          }

          v7 = [(NSMutableArray *)choices countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
        if (v8 <= 1)
        {
          result = 1;
        }

        else
        {
          result = 2;
        }
      }

      else
      {
        result = 1;
      }
    }

    self->_cardinality = result;
  }

  return result;
}

- (Class)layoutClass
{
  type = self->_type;
  if (type == 2 || type == 1)
  {
    return objc_opt_class();
  }

  else
  {
    return 0;
  }
}

- (Class)evaluatorClass
{
  type = self->_type;
  if (type == 1 || type == 2)
  {
    return objc_opt_class();
  }

  else
  {
    return 0;
  }
}

- (int)evaluateAnswerWithResponseController:(id)controller updateScore:(BOOL)score choiceBlock:(id)block
{
  scoreCopy = score;
  v25[4] = block;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_17E9F0;
  v26[3] = &unk_45E400;
  v26[4] = block;
  v24[4] = block;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_17EA0C;
  v25[3] = &unk_45E400;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_17EA28;
  v24[3] = &unk_45E400;
  if (score)
  {
    newTemporateReviewResponseMOC = 0;
  }

  else
  {
    newTemporateReviewResponseMOC = [controller newTemporateReviewResponseMOC];
  }

  v9 = [controller responseForQuestionID:-[THWReviewQuestion questionID](self temporaryMOC:{"questionID"), newTemporateReviewResponseMOC}];
  v10 = [[TSWReviewResponseEvaluatorDataSource alloc] initWithResponse:v9];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  choices = [(THWReviewQuestion *)self choices];
  v12 = [(NSArray *)choices countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(choices);
        }

        [*(*(&v20 + 1) + 8 * i) fraction];
        [(TSWReviewResponseEvaluatorDataSource *)v10 addFraction:?];
      }

      v13 = [(NSArray *)choices countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v13);
  }

  v16 = [(objc_class *)[(THWReviewQuestion *)self evaluatorClass] evaluate:v10 blockIfCorrect:v26 blockIfIncorrect:v25 blockIfMissing:v24];
  if (![v16 correctCount])
  {
    v17 = 3;
    if (!scoreCopy)
    {
      goto LABEL_17;
    }

LABEL_16:
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_17EA44;
    v19[3] = &unk_45AE58;
    v19[4] = v9;
    v19[5] = v16;
    [controller mutateResponse:v9 block:v19];
    goto LABEL_17;
  }

  if ([v16 incorrectCount])
  {
    v17 = 4;
    if (!scoreCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ([v16 missingCount])
  {
    v17 = 5;
  }

  else
  {
    v17 = 6;
  }

  if (scoreCopy)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v17;
}

- (CGSize)referenceContentSize
{
  width = self->_referenceContentSize.width;
  height = self->_referenceContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
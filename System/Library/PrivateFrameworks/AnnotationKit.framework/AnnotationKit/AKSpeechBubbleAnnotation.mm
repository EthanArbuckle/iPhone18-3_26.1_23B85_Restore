@interface AKSpeechBubbleAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
- (AKSpeechBubbleAnnotation)initWithCoder:(id)coder;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKSpeechBubbleAnnotation

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"pointyBitPoint"] & 1) == 0 && !objc_msgSend(keyCopy, "isEqualToString:", @"pointyBitBaseWidthAngle") || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Speech Bubble Tail", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___AKSpeechBubbleAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
  }

  return v6;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Speech Bubble" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKSpeechBubbleAnnotation;
  keysForValuesToObserveForUndo = [(AKThoughtBubbleAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BA9B0];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKSpeechBubbleAnnotation;
  keysForValuesToObserveForRedrawing = [(AKThoughtBubbleAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BA9C8];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKSpeechBubbleAnnotation;
  keysForValuesToObserveForAdornments = [(AKThoughtBubbleAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:keysForValuesToObserveForAdornments];

  [v4 addObjectsFromArray:&unk_2851BA9E0];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AKSpeechBubbleAnnotation;
  coderCopy = coder;
  [(AKThoughtBubbleAnnotation *)&v5 encodeWithCoder:coderCopy];
  [(AKSpeechBubbleAnnotation *)self pointyBitBaseWidthAngle:v5.receiver];
  [coderCopy encodeDouble:@"pointyBitBaseWidthAngle" forKey:?];
}

- (AKSpeechBubbleAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AKSpeechBubbleAnnotation;
  v5 = [(AKThoughtBubbleAnnotation *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(AKSpeechBubbleAnnotation *)v5 setPointyBitBaseWidthAngle:20.0];
    if ([coderCopy containsValueForKey:@"pointyBitBaseWidthAngle"])
    {
      [coderCopy decodeDoubleForKey:@"pointyBitBaseWidthAngle"];
      [(AKSpeechBubbleAnnotation *)v6 setPointyBitBaseWidthAngle:?];
    }
  }

  return v6;
}

@end
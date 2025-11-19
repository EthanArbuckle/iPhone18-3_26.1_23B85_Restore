@interface CIAztecCodeGenerator
+ (id)customAttributes;
- (CGImage)outputCGImage;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation CIAztecCodeGenerator

+ (id)customAttributes
{
  v15[0] = kCIAttributeFilterCategories;
  v14[0] = kCICategoryGenerator;
  v14[1] = kCICategoryStillImage;
  v14[2] = kCICategoryBuiltIn;
  v2 = [NSArray arrayWithObjects:v14 count:3];
  v16[0] = v2;
  v16[1] = @"8";
  v15[1] = kCIAttributeFilterAvailable_iOS;
  v15[2] = kCIAttributeFilterAvailable_Mac;
  v16[2] = @"10.10";
  v16[3] = &__NSDictionary0__struct;
  v15[3] = @"inputMessage";
  v15[4] = @"inputCorrectionLevel";
  v12[0] = kCIAttributeMin;
  v12[1] = kCIAttributeSliderMin;
  v13[0] = &off_1DCD0;
  v13[1] = &off_1DCD0;
  v12[2] = kCIAttributeSliderMax;
  v12[3] = kCIAttributeMax;
  v13[2] = &off_1DCE8;
  v13[3] = &off_1DCE8;
  v12[4] = kCIAttributeDefault;
  v12[5] = kCIAttributeType;
  v13[4] = &off_1DD00;
  v13[5] = kCIAttributeTypeInteger;
  v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];
  v16[4] = v3;
  v15[5] = @"inputLayers";
  v10[0] = kCIAttributeMin;
  v10[1] = kCIAttributeSliderMin;
  v11[0] = &off_1DCB8;
  v11[1] = &off_1DCB8;
  v10[2] = kCIAttributeSliderMax;
  v10[3] = kCIAttributeMax;
  v11[2] = &off_1DC58;
  v11[3] = &off_1DC58;
  v10[4] = kCIAttributeType;
  v11[4] = kCIAttributeTypeInteger;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
  v16[5] = v4;
  v15[6] = @"inputCompactStyle";
  v8[0] = kCIAttributeMin;
  v8[1] = kCIAttributeSliderMin;
  v9[0] = &__kCFBooleanFalse;
  v9[1] = &__kCFBooleanFalse;
  v8[2] = kCIAttributeSliderMax;
  v8[3] = kCIAttributeMax;
  v9[2] = &__kCFBooleanTrue;
  v9[3] = &__kCFBooleanTrue;
  v8[4] = kCIAttributeType;
  v9[4] = kCIAttributeTypeBoolean;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v16[6] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:7];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"inputOptions"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v9 = [v8 objectForKey:@"AztecOptionErrorCorrectionPercentage"];

      if (v9)
      {
        v10 = [v8 objectForKey:@"AztecOptionErrorCorrectionPercentage"];
        [(CIAztecCodeGenerator *)self setInputCorrectionLevel:v10];
      }

      v11 = [v8 objectForKey:@"AztecOptionLayers"];

      if (v11)
      {
        v12 = [v8 objectForKey:@"AztecOptionLayers"];
        [(CIAztecCodeGenerator *)self setInputLayers:v12];
      }

      v13 = [v8 objectForKey:@"AztecOptionUseCompactStyle"];

      if (v13)
      {
        v14 = [v8 objectForKey:@"AztecOptionUseCompactStyle"];
        [(CIAztecCodeGenerator *)self setInputLayers:v14];
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CIAztecCodeGenerator;
    [(CIAztecCodeGenerator *)&v15 setValue:v6 forUndefinedKey:v7];
  }
}

- (CGImage)outputCGImage
{
  if (!self->super.inputMessage)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = @"CIAztecCodeGenerator filter requires NSData for inputMessage";
    goto LABEL_9;
  }

  if (self->inputCorrectionLevel)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSNumber *)self->inputCorrectionLevel floatValue], v3 < 5.0) || ([(NSNumber *)self->inputCorrectionLevel floatValue], v4 > 95.0))
    {
      v5 = @"CIAztecCodeGenerator filter requires nil or a number between 5 and 95 for inputCorrectionLevel";
LABEL_9:
      [NSException raise:@"CIAztecCodeGenerator" format:v5];
      return 0;
    }
  }

  if (self->inputLayers)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSNumber *)self->inputLayers floatValue], v8 < 1.0) || ([(NSNumber *)self->inputLayers floatValue], v9 > 32.0))
    {
      v5 = @"CIAztecCodeGenerator filter requires nil or a number between 1 and 32 for inputLayers";
      goto LABEL_9;
    }
  }

  if (self->inputCompactStyle)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSNumber *)self->inputCompactStyle isEqual:&__kCFBooleanTrue]& 1) == 0 && ([(NSNumber *)self->inputCompactStyle isEqual:&__kCFBooleanFalse]& 1) == 0)
    {
      v5 = @"CIAztecCodeGenerator filter requires nil or @YES or @NO for inputCompactStyle";
      goto LABEL_9;
    }
  }

  v10 = +[NSMutableDictionary dictionary];
  v11 = v10;
  inputCorrectionLevel = self->inputCorrectionLevel;
  if (inputCorrectionLevel)
  {
    [v10 setObject:inputCorrectionLevel forKey:@"AztecOptionErrorCorrectionPercentage"];
  }

  inputLayers = self->inputLayers;
  if (inputLayers)
  {
    [v11 setObject:inputLayers forKey:@"AztecOptionLayers"];
  }

  inputCompactStyle = self->inputCompactStyle;
  if (inputCompactStyle)
  {
    [v11 setObject:inputCompactStyle forKey:@"AztecOptionUseCompactStyle"];
  }

  v6 = sub_5360(self->super.inputMessage, v11);
  v15 = 0;
  v16 = v15;
  if (v6)
  {
    CFAutorelease(v6);
  }

  else if (v15)
  {
    v17 = [v15 localizedDescription];
    NSLog(@"%@", v17);
  }

  else
  {
    NSLog(@"CIAztecCodeGenerator could not generate an image");
  }

  return v6;
}

@end
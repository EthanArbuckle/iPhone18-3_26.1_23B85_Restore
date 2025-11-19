@interface AVTextStyleRule
+ (AVTextStyleRule)textStyleRuleWithTextMarkupAttributes:(NSDictionary *)textMarkupAttributes textSelector:(NSString *)textSelector;
+ (NSArray)textStyleRulesFromPropertyList:(id)plist;
+ (id)propertyListForTextStyleRules:(NSArray *)textStyleRules;
- (AVTextStyleRule)init;
- (AVTextStyleRule)initWithTextMarkupAttributes:(NSDictionary *)textMarkupAttributes textSelector:(NSString *)textSelector;
- (BOOL)isEqual:(id)a3;
- (id)_dictionaryPlistRepresentation;
- (void)dealloc;
@end

@implementation AVTextStyleRule

+ (id)propertyListForTextStyleRules:(NSArray *)textStyleRules
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](textStyleRules, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSArray *)textStyleRules countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(textStyleRules);
        }

        [v4 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "_dictionaryPlistRepresentation")}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)textStyleRules countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (NSArray)textStyleRulesFromPropertyList:(id)plist
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(plist, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = plist;
  v24 = [plist countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v23 = *v30;
    v4 = *MEMORY[0x1E6960A88];
    v21 = *MEMORY[0x1E6960C08];
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        v7 = [v6 objectForKey:v4];
        v8 = [v6 objectForKey:@"AVCGColorAttributes"];
        v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
        [v9 removeObjectForKey:v4];
        [v9 removeObjectForKey:@"AVCGColorAttributes"];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v25 + 1) + 8 * j);
              [v9 objectForKey:v14];
              CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray();
              if (CGColorSRGBFromCFArray)
              {
                v16 = CGColorSRGBFromCFArray;
                [v9 setObject:CGColorSRGBFromCFArray forKey:v14];
                CGColorRelease(v16);
              }
            }

            v11 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v11);
        }

        if (v7)
        {
          if ([v7 isEqual:v21])
          {
            v17 = 0;
          }

          else
          {
            v17 = v7;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = [AVTextStyleRule textStyleRuleWithTextMarkupAttributes:v9 textSelector:v17];
        if (v18)
        {
          [(NSArray *)v22 addObject:v18];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  return v22;
}

+ (AVTextStyleRule)textStyleRuleWithTextMarkupAttributes:(NSDictionary *)textMarkupAttributes textSelector:(NSString *)textSelector
{
  v4 = [[AVTextStyleRule alloc] initWithTextMarkupAttributes:textMarkupAttributes textSelector:textSelector];

  return v4;
}

- (AVTextStyleRule)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D920];
  v6 = NSStringFromSelector(sel_initWithTextMarkupAttributes_textSelector_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVTextStyleRule)initWithTextMarkupAttributes:(NSDictionary *)textMarkupAttributes textSelector:(NSString *)textSelector
{
  v9.receiver = self;
  v9.super_class = AVTextStyleRule;
  v6 = [(AVTextStyleRule *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVTextStyleRuleInternal);
    v6->_textStyleRule = v7;
    if (v7)
    {
      CFRetain(v7);
      v6->_textStyleRule->textMarkupAttributes = textMarkupAttributes;
      v6->_textStyleRule->textSelector = textSelector;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  textStyleRule = self->_textStyleRule;
  if (textStyleRule)
  {

    CFRelease(self->_textStyleRule);
  }

  v4.receiver = self;
  v4.super_class = AVTextStyleRule;
  [(AVTextStyleRule *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSDictionary isEqualToDictionary:](self->_textStyleRule->textMarkupAttributes, "isEqualToDictionary:", [a3 textMarkupAttributes]);
      if (!v5)
      {
        return v5;
      }

      v6 = [a3 textSelector];
      textSelector = self->_textStyleRule->textSelector;
      if (textSelector)
      {
        v5 = [(NSString *)textSelector isEqualToString:v6];
        if (!v5)
        {
          return v5;
        }

        goto LABEL_11;
      }

      if (!v6)
      {
LABEL_11:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (id)_dictionaryPlistRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_textStyleRule->textMarkupAttributes];
  textSelector = self->_textStyleRule->textSelector;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69607C0], *MEMORY[0x1E6960878], 0}];
  v6 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v3 objectForKey:v11];
        if (v12)
        {
          v13 = CFGetTypeID(v12);
          if (v13 == CGColorGetTypeID())
          {
            [v3 setValue:FigCopyCGColorSRGBAsCFArray() forKey:v11];
            [v6 addObject:v11];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E6960C08];
  if ([v6 count])
  {
    [v3 setObject:v6 forKey:@"AVCGColorAttributes"];
  }

  if (textSelector)
  {
    v15 = textSelector;
  }

  else
  {
    v15 = v14;
  }

  [v3 setObject:v15 forKey:*MEMORY[0x1E6960A88]];
  return v3;
}

@end
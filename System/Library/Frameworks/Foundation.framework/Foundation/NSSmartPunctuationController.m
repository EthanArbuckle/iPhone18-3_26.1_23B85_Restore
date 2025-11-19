@interface NSSmartPunctuationController
- (NSSmartPunctuationController)init;
- (NSSmartQuoteOptions)smartQuoteOptions;
- (void)clientDidReplaceRange:(_NSRange)a3 changeInLength:(int64_t)a4;
- (void)dealloc;
- (void)setSmartDashesEnabled:(BOOL)a3;
- (void)setSmartQuoteOptions:(id)a3;
- (void)setSmartQuotesEnabled:(BOOL)a3;
@end

@implementation NSSmartPunctuationController

- (NSSmartPunctuationController)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSSmartPunctuationController;
  v2 = [(NSSmartPunctuationController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_types = 192;
    v2->_options = [[NSSmartQuoteOptions alloc] initWithLeftSingleQuote:@"‘" rightSingleQuote:@"’" apostrophe:@"’" leftDoubleQuote:@"“" rightDoubleQuote:@"”"];
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  self->_client = 0;

  v3.receiver = self;
  v3.super_class = NSSmartPunctuationController;
  [(NSSmartPunctuationController *)&v3 dealloc];
}

- (NSSmartQuoteOptions)smartQuoteOptions
{
  v2 = self->_options;

  return v2;
}

- (void)setSmartQuoteOptions:(id)a3
{
  options = self->_options;
  if (options != a3)
  {

    self->_options = [a3 copy];
  }
}

- (void)setSmartQuotesEnabled:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_types = self->_types & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setSmartDashesEnabled:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_types = self->_types & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)clientDidReplaceRange:(_NSRange)a3 changeInLength:(int64_t)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3.length + a4;
  v5 = a3.location - 1;
  if (a3.location)
  {
    v6 = a3.length + a4 + 2;
  }

  else
  {
    v6 = v4 + 1;
  }

  if (a3.location)
  {
    v7 = a3.location - 1;
  }

  else
  {
    v7 = 0;
  }

  if (self->_client)
  {
    if (self->_options && v6 != 0)
    {
      location = a3.location;
      if ([(NSSmartPunctuationController *)self smartQuotesEnabled])
      {
        v47 = 0;
        v48 = 0;
        v11 = [(NSSmartPunctuationClient *)self->_client substringForProposedRange:v7 actualRange:v6, &v47];
        if (v11)
        {
          if (v48)
          {
            v12 = v11;
            v13 = [v11 length];
            if (v13 == v48)
            {
              v42 = [MEMORY[0x1E695DF70] array];
              v46 = +[NSCharacterSet alphanumericCharacterSet];
              v43 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
              if (!clientDidReplaceRange_changeInLength__openerCharacterSet)
              {
                clientDidReplaceRange_changeInLength__openerCharacterSet = objc_retain([NSCharacterSet characterSetWithCharactersInString:[NSString stringWithFormat:@"([{</@-=%C%C"), 8211, 8212]];
              }

              if (v48)
              {
                v14 = 0;
                v15 = v4 + location;
                if (location)
                {
                  v16 = v5;
                }

                else
                {
                  v16 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v44 = v16;
                v45 = v4 + location;
                do
                {
                  v17 = [v12 characterAtIndex:v14];
                  if ((v47 + v14 != v16 || location == 0) && v47 + v14 != v15)
                  {
                    v20 = v17;
                    if (v17 == 39 || v17 == 34)
                    {
                      if (v14)
                      {
                        [v12 rangeOfCharacterFromSet:v43 options:12 range:{0, v14}];
                        v22 = v21;
                        [v12 rangeOfCharacterFromSet:clientDidReplaceRange_changeInLength__openerCharacterSet options:12 range:{0, v14}];
                        v24 = v22 | v23;
                        [v12 rangeOfString:-[NSSmartQuoteOptions leftSingleQuote](self->_options options:"leftSingleQuote") range:{12, 0, v14}];
                        v26 = v25 != 0;
                        [v12 rangeOfString:-[NSSmartQuoteOptions leftDoubleQuote](self->_options options:"leftDoubleQuote") range:{12, 0, v14}];
                        v28 = v27 != 0;
                        [v12 rangeOfCharacterFromSet:v46 options:12 range:{0, v14}];
                        v30 = v29 == 0;
                        v31 = v24 != 0;
                      }

                      else
                      {
                        v28 = 0;
                        v26 = 0;
                        v31 = 0;
                        v30 = 1;
                      }

                      if (v14 + 1 >= v48)
                      {
                        v33 = 1;
                      }

                      else
                      {
                        [v12 rangeOfCharacterFromSet:v46 options:8 range:?];
                        v33 = v32 == 0;
                      }

                      if (v20 == 34)
                      {
                        options = self->_options;
                        v16 = v44;
                        if (v31 || v26)
                        {
                          v35 = [(NSSmartQuoteOptions *)options leftDoubleQuote];
                        }

                        else
                        {
                          v35 = [(NSSmartQuoteOptions *)options rightDoubleQuote];
                        }

                        v36 = v35;
                        v15 = v45;
                      }

                      else if (v31 || v28)
                      {
                        v36 = [(NSSmartQuoteOptions *)self->_options leftSingleQuote];
                        v16 = v44;
                        v15 = v45;
                      }

                      else
                      {
                        v37 = self->_options;
                        v16 = v44;
                        v15 = v45;
                        if (v30 || v33)
                        {
                          v38 = [(NSSmartQuoteOptions *)v37 rightSingleQuote];
                        }

                        else
                        {
                          v38 = [(NSSmartQuoteOptions *)v37 apostrophe];
                        }

                        v36 = v38;
                      }

                      [v12 rangeOfString:v36 options:8 range:{v14, 1}];
                      if (!v39)
                      {
                        v40 = [NSQuoteCheckingResult alloc];
                        v41 = [(NSSubstitutionCheckingResult *)v40 initWithRange:v47 + v14 replacementString:1, v36];
                        [v42 addObject:v41];
                      }
                    }
                  }

                  ++v14;
                }

                while (v14 < v48);
              }

              if ([v42 count])
              {
                [(NSSmartPunctuationClient *)self->_client applySmartPunctuationResults:v42];
              }
            }
          }
        }
      }
    }
  }
}

@end
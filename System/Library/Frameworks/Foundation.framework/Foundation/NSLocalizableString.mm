@interface NSLocalizableString
+ (id)localizableStringWithStringsFileKey:(id)key developmentLanguageString:(id)string;
- (NSLocalizableString)initWithCoder:(id)coder;
- (NSLocalizableString)initWithStringsFileKey:(id)key developmentLanguageString:(id)string;
- (id)awakeAfterUsingCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDevelopmentLanguageString:(id)string;
- (void)setStringsFileKey:(id)key;
@end

@implementation NSLocalizableString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSLocalizableString;
  [(NSLocalizableString *)&v3 dealloc];
}

- (id)awakeAfterUsingCoder:(id)coder
{
  currentNibPath = [objc_msgSend(+[NSBundle currentNibPath](NSBundle currentNibPath];
  v5 = +[NSBundle currentNibLoadingBundle];
  if (currentNibPath)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    [v6 localizedStringsForTable:currentNibPath localization:0];
    objc_autoreleasePoolPop(v7);
    developmentLanguageString = [v6 localizedStringForKey:self->_stringsFileKey value:self->_developmentLanguageString table:currentNibPath];
  }

  else
  {
    developmentLanguageString = self->_developmentLanguageString;
  }

  v9 = developmentLanguageString;

  return developmentLanguageString;
}

- (NSLocalizableString)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSLocalizableString;
  v4 = [(NSString *)&v6 init];
  if (v4)
  {
    v4->_stringsFileKey = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSKey", "copy"}];
    v4->_developmentLanguageString = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSDev", "copy"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSLocalizableString;
  [(NSString *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_stringsFileKey forKey:@"NSKey"];
  [coder encodeObject:self->_developmentLanguageString forKey:@"NSDev"];
}

- (NSLocalizableString)initWithStringsFileKey:(id)key developmentLanguageString:(id)string
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSLocalizableString;
  v6 = [(NSString *)&v8 init];
  if (v6)
  {
    v6->_stringsFileKey = [key copy];
    v6->_developmentLanguageString = [string copy];
  }

  return v6;
}

+ (id)localizableStringWithStringsFileKey:(id)key developmentLanguageString:(id)string
{
  v4 = [[self alloc] initWithStringsFileKey:key developmentLanguageString:string];

  return v4;
}

- (void)setStringsFileKey:(id)key
{
  stringsFileKey = self->_stringsFileKey;
  if (stringsFileKey != key)
  {

    self->_stringsFileKey = [key copy];
  }
}

- (void)setDevelopmentLanguageString:(id)string
{
  developmentLanguageString = self->_developmentLanguageString;
  if (developmentLanguageString != string)
  {

    self->_developmentLanguageString = [string copy];
  }
}

@end
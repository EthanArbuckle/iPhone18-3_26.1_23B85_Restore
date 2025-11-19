@interface NSLocalizableString
+ (id)localizableStringWithStringsFileKey:(id)a3 developmentLanguageString:(id)a4;
- (NSLocalizableString)initWithCoder:(id)a3;
- (NSLocalizableString)initWithStringsFileKey:(id)a3 developmentLanguageString:(id)a4;
- (id)awakeAfterUsingCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDevelopmentLanguageString:(id)a3;
- (void)setStringsFileKey:(id)a3;
@end

@implementation NSLocalizableString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSLocalizableString;
  [(NSLocalizableString *)&v3 dealloc];
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [objc_msgSend(+[NSBundle currentNibPath](NSBundle currentNibPath];
  v5 = +[NSBundle currentNibLoadingBundle];
  if (v4)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    [v6 localizedStringsForTable:v4 localization:0];
    objc_autoreleasePoolPop(v7);
    developmentLanguageString = [v6 localizedStringForKey:self->_stringsFileKey value:self->_developmentLanguageString table:v4];
  }

  else
  {
    developmentLanguageString = self->_developmentLanguageString;
  }

  v9 = developmentLanguageString;

  return developmentLanguageString;
}

- (NSLocalizableString)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSLocalizableString;
  v4 = [(NSString *)&v6 init];
  if (v4)
  {
    v4->_stringsFileKey = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSKey", "copy"}];
    v4->_developmentLanguageString = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSDev", "copy"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSLocalizableString;
  [(NSString *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_stringsFileKey forKey:@"NSKey"];
  [a3 encodeObject:self->_developmentLanguageString forKey:@"NSDev"];
}

- (NSLocalizableString)initWithStringsFileKey:(id)a3 developmentLanguageString:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSLocalizableString;
  v6 = [(NSString *)&v8 init];
  if (v6)
  {
    v6->_stringsFileKey = [a3 copy];
    v6->_developmentLanguageString = [a4 copy];
  }

  return v6;
}

+ (id)localizableStringWithStringsFileKey:(id)a3 developmentLanguageString:(id)a4
{
  v4 = [[a1 alloc] initWithStringsFileKey:a3 developmentLanguageString:a4];

  return v4;
}

- (void)setStringsFileKey:(id)a3
{
  stringsFileKey = self->_stringsFileKey;
  if (stringsFileKey != a3)
  {

    self->_stringsFileKey = [a3 copy];
  }
}

- (void)setDevelopmentLanguageString:(id)a3
{
  developmentLanguageString = self->_developmentLanguageString;
  if (developmentLanguageString != a3)
  {

    self->_developmentLanguageString = [a3 copy];
  }
}

@end
@interface CNContactSuggestionViewControllerSGOriginDataSource
+ (id)contactSuggestionTypeBySuggestionType;
+ (id)dateFormatter;
- (CNContactSuggestionViewControllerSGOriginDataSource)initWithSGOrigin:(id)origin;
- (NSAttributedString)formattedSnippet;
- (NSString)appName;
- (NSString)date;
- (NSString)title;
- (NSString)with;
- (NSURL)url;
- (id)contactNameFromPerson:(id)person;
- (unint64_t)type;
@end

@implementation CNContactSuggestionViewControllerSGOriginDataSource

- (NSURL)url
{
  origin = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v3 = [origin url];

  return v3;
}

- (id)contactNameFromPerson:(id)person
{
  personCopy = person;
  displayName = [personCopy displayName];
  v5 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], displayName))
  {

    handles = [personCopy handles];
    firstObject = [handles firstObject];

    if ((*(v5 + 16))(v5, firstObject))
    {
      displayName = 0;
    }

    else
    {
      displayName = firstObject;
    }
  }

  return displayName;
}

- (NSString)with
{
  if ([(CNContactSuggestionViewControllerSGOriginDataSource *)self type]== 1 || [(CNContactSuggestionViewControllerSGOriginDataSource *)self type]== 4)
  {
    origin = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    if ([origin isSent])
    {
      origin2 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
      toPeople = [origin2 toPeople];

      if (toPeople)
      {
        origin3 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
        toPeople2 = [origin3 toPeople];
        firstObject = [toPeople2 firstObject];
        v9 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self contactNameFromPerson:firstObject];

LABEL_8:
        goto LABEL_10;
      }
    }

    else
    {
    }

    origin3 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    toPeople2 = [origin3 fromPerson];
    v9 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self contactNameFromPerson:toPeople2];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"SUGGESTION_FROM_APP_WITH_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    appName = [(CNContactSuggestionViewControllerSGOriginDataSource *)self appName];
    appName2 = [v10 stringWithFormat:v12, appName, v9];
  }

  else
  {
    appName2 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self appName];
  }

  return appName2;
}

- (NSString)date
{
  origin = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  date = [origin date];

  if (date)
  {
    dateFormatter = [objc_opt_class() dateFormatter];
    [dateFormatter setDoesRelativeDateFormatting:1];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    origin2 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    date2 = [origin2 date];
    v9 = [currentCalendar isDateInToday:date2];

    [dateFormatter setDateStyle:v9 ^ 1];
    [dateFormatter setTimeStyle:v9];
    origin3 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    date3 = [origin3 date];
    v12 = [dateFormatter stringFromDate:date3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)type
{
  contactSuggestionTypeBySuggestionType = [objc_opt_class() contactSuggestionTypeBySuggestionType];
  v4 = MEMORY[0x1E696AD98];
  origin = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(origin, "type")}];
  v7 = [contactSuggestionTypeBySuggestionType objectForKey:v6];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (NSString)title
{
  v3 = *MEMORY[0x1E6996568];
  origin = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  title = [origin title];
  LOBYTE(v3) = (*(v3 + 16))(v3, title);

  if ((v3 & 1) == 0)
  {
    origin2 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    title2 = [origin2 title];
    goto LABEL_5;
  }

  if ([(CNContactSuggestionViewControllerSGOriginDataSource *)self type]== 1)
  {
    origin2 = CNContactsUIBundle();
    title2 = [origin2 localizedStringForKey:@"SUGGESTION_REVIEW_MAIL_DEFAULT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
LABEL_5:
    v8 = title2;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (NSAttributedString)formattedSnippet
{
  v3 = *MEMORY[0x1E6996568];
  origin = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  contextSnippet = [origin contextSnippet];
  LOBYTE(v3) = (*(v3 + 16))(v3, contextSnippet);

  if (v3)
  {
    v6 = 0;
    goto LABEL_9;
  }

  origin2 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  if ([origin2 contextSnippetRange] == 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    origin3 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    contextSnippetRange = [origin3 contextSnippetRange];
    v11 = contextSnippetRange + v10;
    origin4 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    contextSnippet2 = [origin4 contextSnippet];
    v14 = [contextSnippet2 length];

    if (v11 <= v14)
    {
      v20 = objc_alloc(MEMORY[0x1E696AD40]);
      origin5 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
      contextSnippet3 = [origin5 contextSnippet];
      v6 = [v20 initWithString:contextSnippet3];

      v23 = *MEMORY[0x1E69DB650];
      v24 = +[CNContactStyle currentStyle];
      textColor = [v24 textColor];
      origin6 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
      contextSnippetRange2 = [origin6 contextSnippetRange];
      [v6 addAttribute:v23 value:textColor range:{contextSnippetRange2, v28}];

      mutableString = [v6 mutableString];
      [mutableString replaceOccurrencesOfString:@"\n\n" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
      goto LABEL_8;
    }
  }

  origin7 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  contextSnippet4 = [origin7 contextSnippet];
  origin8 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  contextSnippet5 = [origin8 contextSnippet];
  mutableString = [contextSnippet4 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n" options:0 range:{0, objc_msgSend(contextSnippet5, "length")}];

  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:mutableString];
LABEL_8:

LABEL_9:

  return v6;
}

- (NSString)appName
{
  origin = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  localizedApplicationName = [origin localizedApplicationName];

  return localizedApplicationName;
}

- (CNContactSuggestionViewControllerSGOriginDataSource)initWithSGOrigin:(id)origin
{
  originCopy = origin;
  v10.receiver = self;
  v10.super_class = CNContactSuggestionViewControllerSGOriginDataSource;
  v6 = [(CNContactSuggestionViewControllerSGOriginDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_origin, origin);
    v8 = v7;
  }

  return v7;
}

+ (id)dateFormatter
{
  if (dateFormatter_cn_once_token_2 != -1)
  {
    dispatch_once(&dateFormatter_cn_once_token_2, &__block_literal_global_38_38902);
  }

  v3 = dateFormatter_cn_once_object_2;

  return v3;
}

uint64_t __68__CNContactSuggestionViewControllerSGOriginDataSource_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dateFormatter_cn_once_object_2;
  dateFormatter_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)contactSuggestionTypeBySuggestionType
{
  if (contactSuggestionTypeBySuggestionType_cn_once_token_1 != -1)
  {
    dispatch_once(&contactSuggestionTypeBySuggestionType_cn_once_token_1, &__block_literal_global_38905);
  }

  v3 = contactSuggestionTypeBySuggestionType_cn_once_object_1;

  return v3;
}

void __92__CNContactSuggestionViewControllerSGOriginDataSource_contactSuggestionTypeBySuggestionType__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F0D4B628;
  v2[1] = &unk_1F0D4B640;
  v3[0] = &unk_1F0D4B628;
  v3[1] = &unk_1F0D4B640;
  v2[2] = &unk_1F0D4B658;
  v2[3] = &unk_1F0D4B670;
  v3[2] = &unk_1F0D4B658;
  v3[3] = &unk_1F0D4B670;
  v2[4] = &unk_1F0D4B688;
  v2[5] = &unk_1F0D4B6A0;
  v3[4] = &unk_1F0D4B688;
  v3[5] = &unk_1F0D4B6A0;
  v2[6] = &unk_1F0D4B6B8;
  v2[7] = &unk_1F0D4B6D0;
  v3[6] = &unk_1F0D4B6B8;
  v3[7] = &unk_1F0D4B6D0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = contactSuggestionTypeBySuggestionType_cn_once_object_1;
  contactSuggestionTypeBySuggestionType_cn_once_object_1 = v0;
}

@end
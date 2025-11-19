@interface CNContactSuggestionViewControllerSGOriginDataSource
+ (id)contactSuggestionTypeBySuggestionType;
+ (id)dateFormatter;
- (CNContactSuggestionViewControllerSGOriginDataSource)initWithSGOrigin:(id)a3;
- (NSAttributedString)formattedSnippet;
- (NSString)appName;
- (NSString)date;
- (NSString)title;
- (NSString)with;
- (NSURL)url;
- (id)contactNameFromPerson:(id)a3;
- (unint64_t)type;
@end

@implementation CNContactSuggestionViewControllerSGOriginDataSource

- (NSURL)url
{
  v2 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v3 = [v2 url];

  return v3;
}

- (id)contactNameFromPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 displayName];
  v5 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v4))
  {

    v6 = [v3 handles];
    v7 = [v6 firstObject];

    if ((*(v5 + 16))(v5, v7))
    {
      v4 = 0;
    }

    else
    {
      v4 = v7;
    }
  }

  return v4;
}

- (NSString)with
{
  if ([(CNContactSuggestionViewControllerSGOriginDataSource *)self type]== 1 || [(CNContactSuggestionViewControllerSGOriginDataSource *)self type]== 4)
  {
    v3 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    if ([v3 isSent])
    {
      v4 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
      v5 = [v4 toPeople];

      if (v5)
      {
        v6 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
        v7 = [v6 toPeople];
        v8 = [v7 firstObject];
        v9 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self contactNameFromPerson:v8];

LABEL_8:
        goto LABEL_10;
      }
    }

    else
    {
    }

    v6 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    v7 = [v6 fromPerson];
    v9 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self contactNameFromPerson:v7];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"SUGGESTION_FROM_APP_WITH_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self appName];
    v14 = [v10 stringWithFormat:v12, v13, v9];
  }

  else
  {
    v14 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self appName];
  }

  return v14;
}

- (NSString)date
{
  v3 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v4 = [v3 date];

  if (v4)
  {
    v5 = [objc_opt_class() dateFormatter];
    [v5 setDoesRelativeDateFormatting:1];
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    v8 = [v7 date];
    v9 = [v6 isDateInToday:v8];

    [v5 setDateStyle:v9 ^ 1];
    [v5 setTimeStyle:v9];
    v10 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    v11 = [v10 date];
    v12 = [v5 stringFromDate:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)type
{
  v3 = [objc_opt_class() contactSuggestionTypeBySuggestionType];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
  v7 = [v3 objectForKey:v6];

  if (v7)
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)title
{
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v5 = [v4 title];
  LOBYTE(v3) = (*(v3 + 16))(v3, v5);

  if ((v3 & 1) == 0)
  {
    v6 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    v7 = [v6 title];
    goto LABEL_5;
  }

  if ([(CNContactSuggestionViewControllerSGOriginDataSource *)self type]== 1)
  {
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"SUGGESTION_REVIEW_MAIL_DEFAULT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (NSAttributedString)formattedSnippet
{
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v5 = [v4 contextSnippet];
  LOBYTE(v3) = (*(v3 + 16))(v3, v5);

  if (v3)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  if ([v7 contextSnippetRange] == 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    v8 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    v9 = [v8 contextSnippetRange];
    v11 = v9 + v10;
    v12 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
    v13 = [v12 contextSnippet];
    v14 = [v13 length];

    if (v11 <= v14)
    {
      v20 = objc_alloc(MEMORY[0x1E696AD40]);
      v21 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
      v22 = [v21 contextSnippet];
      v6 = [v20 initWithString:v22];

      v23 = *MEMORY[0x1E69DB650];
      v24 = +[CNContactStyle currentStyle];
      v25 = [v24 textColor];
      v26 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
      v27 = [v26 contextSnippetRange];
      [v6 addAttribute:v23 value:v25 range:{v27, v28}];

      v19 = [v6 mutableString];
      [v19 replaceOccurrencesOfString:@"\n\n" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
      goto LABEL_8;
    }
  }

  v15 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v16 = [v15 contextSnippet];
  v17 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v18 = [v17 contextSnippet];
  v19 = [v16 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n" options:0 range:{0, objc_msgSend(v18, "length")}];

  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v19];
LABEL_8:

LABEL_9:

  return v6;
}

- (NSString)appName
{
  v2 = [(CNContactSuggestionViewControllerSGOriginDataSource *)self origin];
  v3 = [v2 localizedApplicationName];

  return v3;
}

- (CNContactSuggestionViewControllerSGOriginDataSource)initWithSGOrigin:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactSuggestionViewControllerSGOriginDataSource;
  v6 = [(CNContactSuggestionViewControllerSGOriginDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_origin, a3);
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
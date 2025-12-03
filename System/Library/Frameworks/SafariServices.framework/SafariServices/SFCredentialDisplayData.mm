@interface SFCredentialDisplayData
+ (id)descriptionForPasswordWithUser:(id)user creationDate:(id)date;
- (SFCredentialDisplayData)initWithMatch:(id)match detail:(id)detail creationDate:(id)date;
@end

@implementation SFCredentialDisplayData

+ (id)descriptionForPasswordWithUser:(id)user creationDate:(id)date
{
  userCopy = user;
  dateCopy = date;
  if ([userCopy length])
  {
    v7 = userCopy;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!dateCopy)
  {
    v7 = _WBSLocalizedString();
    goto LABEL_3;
  }

  v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v9 setTimeStyle:0];
  [v9 setDateStyle:1];
  [v9 setDoesRelativeDateFormatting:1];
  [v9 setFormattingContext:1];
  v10 = MEMORY[0x1E696AEC0];
  v11 = _WBSLocalizedString();
  v12 = [v9 stringFromDate:dateCopy];
  v8 = [v10 stringWithFormat:v11, v12];

LABEL_6:

  return v8;
}

- (SFCredentialDisplayData)initWithMatch:(id)match detail:(id)detail creationDate:(id)date
{
  matchCopy = match;
  detailCopy = detail;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = SFCredentialDisplayData;
  v12 = [(SFCredentialDisplayData *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_match, match);
    v14 = [detailCopy copy];
    detail = v13->_detail;
    v13->_detail = v14;

    objc_storeStrong(&v13->_creationDate, date);
    v16 = v13;
  }

  return v13;
}

@end
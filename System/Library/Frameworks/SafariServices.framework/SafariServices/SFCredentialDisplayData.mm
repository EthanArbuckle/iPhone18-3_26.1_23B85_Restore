@interface SFCredentialDisplayData
+ (id)descriptionForPasswordWithUser:(id)a3 creationDate:(id)a4;
- (SFCredentialDisplayData)initWithMatch:(id)a3 detail:(id)a4 creationDate:(id)a5;
@end

@implementation SFCredentialDisplayData

+ (id)descriptionForPasswordWithUser:(id)a3 creationDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!v6)
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
  v12 = [v9 stringFromDate:v6];
  v8 = [v10 stringWithFormat:v11, v12];

LABEL_6:

  return v8;
}

- (SFCredentialDisplayData)initWithMatch:(id)a3 detail:(id)a4 creationDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SFCredentialDisplayData;
  v12 = [(SFCredentialDisplayData *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_match, a3);
    v14 = [v10 copy];
    detail = v13->_detail;
    v13->_detail = v14;

    objc_storeStrong(&v13->_creationDate, a5);
    v16 = v13;
  }

  return v13;
}

@end
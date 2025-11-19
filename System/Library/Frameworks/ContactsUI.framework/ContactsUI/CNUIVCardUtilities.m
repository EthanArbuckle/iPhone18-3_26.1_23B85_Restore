@interface CNUIVCardUtilities
+ (id)fileNameForContact:(id)a3;
@end

@implementation CNUIVCardUtilities

+ (id)fileNameForContact:(id)a3
{
  v3 = [MEMORY[0x1E695CD80] stringFromContact:a3 style:0];
  if (!v3)
  {
    v4 = CNContactsUIBundle();
    v3 = [v4 localizedStringForKey:@"VCARD_DEFAULT_FILE_NAME" value:&stru_1F0CE7398 table:@"Localized"];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.vcf", v3];

  return v5;
}

@end
@interface BYODDomainSetupInstructionViewController
- (BYODDomainSetupInstructionViewController)initWithDnsRecords:(id)records;
- (id)dnsPropertyWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)_viewInstructionsOnWeb:(id)web;
- (void)viewDidLoad;
@end

@implementation BYODDomainSetupInstructionViewController

- (BYODDomainSetupInstructionViewController)initWithDnsRecords:(id)records
{
  v5.receiver = self;
  v5.super_class = BYODDomainSetupInstructionViewController;
  result = [(BYODDomainSetupInstructionViewController *)&v5 init];
  if (result)
  {
    result->_dnsRecords = records;
  }

  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BYODDomainSetupInstructionViewController;
  [(BYODDomainSetupInstructionViewController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DOMAIN_SETUP_VIEW_INSTRUCTION_PAGE_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [(BYODDomainSetupInstructionViewController *)self setTitle:v4];
}

- (id)specifiers
{
  v53 = objc_alloc_init(NSMutableArray);
  v2 = [PSSpecifier groupSpecifierWithID:@"DOMAIN_SETUP_VIEW_INSTRUCTION_PAGE_DESCRIPTION_GROUP_ID"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v52 = v2;
  v4 = [v3 localizedStringForKey:@"DOMAIN_SETUP_VIEW_INSTRUCTION_PAGE_DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
  v48 = PSFooterTextGroupKey;
  [v2 setProperty:v4 forKey:?];

  [v53 addObject:v2];
  v49 = objc_alloc_init(NSMutableArray);
  v5 = [PSSpecifier groupSpecifierWithID:@"DOMAIN_SETUP_VIEW_INSTRUCTION_ON_WEB_GROUP_ID"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v51 = v5;
  v7 = [v6 localizedStringForKey:@"DOMAIN_SETUP_VIEW_INSTRUCTION_ON_WEB_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v5 setProperty:v7 forKey:v48];

  [v49 addObject:v5];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DOMAIN_SETUP_VIEW_INSTRUCTION_ON_WEB_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v10 setButtonAction:"_viewInstructionsOnWeb:"];
  [v49 addObject:v10];
  [v53 addObjectsFromArray:v49];
  dnsRecords = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
  v12 = [dnsRecords count];

  v50 = v10;
  if (v12)
  {
    v13 = 0;
    v60 = PSKeyNameKey;
    v59 = PSIDKey;
    v57 = PSCopyableCellKey;
    v58 = PSCellClassKey;
    while (1)
    {
      dnsRecords2 = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
      v2 = v52;
      v15 = [dnsRecords2 count];

      if (v13 >= v15)
      {
        break;
      }

      dnsRecords3 = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
      v56 = [dnsRecords3 objectAtIndexedSubscript:v13];

      v17 = objc_alloc_init(NSMutableArray);
      dnsRecordType = [v56 dnsRecordType];
      v19 = [PSSpecifier groupSpecifierWithName:dnsRecordType];

      v55 = v19;
      [v17 addObject:v19];
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"BYOD_TYPE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:"dnsPropertyWithSpecifier:" detail:0 cell:4 edit:0];

      [v22 setProperty:@"DNSRecordType" forKey:v60];
      v23 = [NSString stringWithFormat:@"%@%lu", @"DNSRecordType", v13];
      [v22 setProperty:v23 forKey:v59];
      [v22 setProperty:objc_opt_class() forKey:v58];
      [v22 setProperty:&__kCFBooleanTrue forKey:v57];
      [v17 addObject:v22];
      v54 = v23;
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"BYOD_HOST" value:&stru_B9FC8 table:@"AccountPreferences"];
      v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:"dnsPropertyWithSpecifier:" detail:0 cell:4 edit:0];

      [v26 setProperty:@"DNSRecordHost" forKey:v60];
      v27 = [NSString stringWithFormat:@"%@%lu", @"DNSRecordHost", v13];
      [v26 setProperty:v27 forKey:v59];
      [v26 setProperty:objc_opt_class() forKey:v58];
      [v26 setProperty:&__kCFBooleanTrue forKey:v57];
      [v17 addObject:v26];
      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"BYOD_VALUE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:"dnsPropertyWithSpecifier:" detail:0 cell:4 edit:0];

      [v30 setProperty:@"DNSRecordValue" forKey:v60];
      v31 = [NSString stringWithFormat:@"%@%lu", @"DNSRecordValue", v13];
      [v30 setProperty:v31 forKey:v59];
      [v30 setProperty:objc_opt_class() forKey:v58];
      [v30 setProperty:&__kCFBooleanTrue forKey:v57];
      [v17 addObject:v30];
      dnsRecords4 = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
      v33 = [dnsRecords4 objectAtIndexedSubscript:v13];
      priority = [v33 priority];

      if ((priority & 0x8000000000000000) == 0)
      {
        v35 = [NSBundle bundleForClass:objc_opt_class()];
        v36 = [v35 localizedStringForKey:@"BYOD_PRIORITY" value:&stru_B9FC8 table:@"AccountPreferences"];
        v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:self set:0 get:"dnsPropertyWithSpecifier:" detail:0 cell:4 edit:0];

        [v37 setProperty:@"DNSRecordPriority" forKey:v60];
        v38 = [NSString stringWithFormat:@"%@%lu", @"DNSRecordPriority", v13];
        [v37 setProperty:v38 forKey:v59];
        [v37 setProperty:objc_opt_class() forKey:v58];
        [v37 setProperty:&__kCFBooleanTrue forKey:v57];
        [v17 addObject:v37];
      }

      [v53 addObjectsFromArray:v17];

      ++v13;
      v10 = v50;
      v5 = v51;
    }
  }

  v39 = [PSSpecifier groupSpecifierWithID:@"DOMAIN_SETUP_VIEW_INSTRUCTION_PAGE_NOTE_GROUP_ID"];
  v40 = [NSBundle bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"DOMAIN_SETUP_VIEW_INSTRUCTION_PAGE_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v39 setProperty:v41 forKey:v48];

  [v53 addObject:v39];
  v42 = [v53 copy];
  v43 = OBJC_IVAR___PSListController__specifiers;
  v44 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v42;

  v45 = *&self->PSListController_opaque[v43];
  v46 = v45;

  return v45;
}

- (void)_viewInstructionsOnWeb:(id)web
{
  v4 = [SFSafariViewController alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DOMAIN_SETUP_VIEW_INSTRUCTION_ON_WEB_URL" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [NSURL URLWithString:v6];
  v8 = [v4 initWithURL:v7];

  [v8 setDelegate:self];
  [(BYODDomainSetupInstructionViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (id)dnsPropertyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  properties = [specifierCopy properties];
  v6 = [properties objectForKey:PSKeyNameKey];

  properties2 = [specifierCopy properties];
  v8 = [properties2 objectForKey:PSIDKey];

  v9 = [v8 substringFromIndex:{-[__CFString length](v6, "length")}];
  integerValue = [v9 integerValue];

  if (v6 == @"DNSRecordType")
  {
    dnsRecords = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
    v13 = [dnsRecords objectAtIndexedSubscript:integerValue];
    type = [v13 type];
  }

  else if (v6 == @"DNSRecordHost")
  {
    dnsRecords = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
    v13 = [dnsRecords objectAtIndexedSubscript:integerValue];
    type = [v13 host];
  }

  else if (v6 == @"DNSRecordValue")
  {
    dnsRecords = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
    v13 = [dnsRecords objectAtIndexedSubscript:integerValue];
    type = [v13 value];
  }

  else
  {
    if (v6 != @"DNSRecordPriority")
    {
      v11 = &stru_B9FC8;
      goto LABEL_11;
    }

    dnsRecords = [(BYODDomainSetupInstructionViewController *)self dnsRecords];
    v13 = [dnsRecords objectAtIndexedSubscript:integerValue];
    type = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v13 priority]);
  }

  v11 = type;

LABEL_11:

  return v11;
}

@end
@interface ASSettingsOofUIController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (NSArray)externalMessageGroupSpecifiers;
- (id)_composeNewAutoReplyStringWithDate:(id)a3;
- (id)_stringFormatOfDate:(id)a3;
- (id)_updateAutoReplyMessage:(id)a3 withDate:(id)a4;
- (id)autoReplyTextCellSpecifiers;
- (id)currentDateString:(id)a3;
- (id)externalAudiencePropertyWithSpecifier:(id)a3;
- (id)externalAutoReplyTextboxSpecifiers;
- (id)externalMessageRadioSpecifiers;
- (id)externalSpecifersToRemoveAll:(BOOL)a3;
- (id)oofExternalMessageStateWithSpecifier:(id)a3;
- (id)oofStateWithSpecifier:(id)a3;
- (id)outOfOfficeEndDateDisplaySpecifier;
- (id)specifiers;
- (id)timePickerSpecifier;
- (id)trimWhitespaceAndNewlinesFromString:(id)a3;
- (void)_resetAllOutOfOfficeLocalValueToServerValue:(BOOL)a3;
- (void)_updateAllAutoReplyMessages:(id)a3;
- (void)datePickerCell:(id)a3 changedDate:(id)a4;
- (void)dismissKeyboard;
- (void)enableSaveButton;
- (void)saveButtonTapped:(id)a3;
- (void)setAutoReplyText:(id)a3 withSpecifier:(id)a4;
- (void)setExternalAudienceProperty:(id)a3 withSpecifier:(id)a4;
- (void)setExternalAutoReplyText:(id)a3 withSpecifier:(id)a4;
- (void)setOofExternalMessageState:(id)a3 withSpecifier:(id)a4;
- (void)setOofState:(id)a3 withSpecifier:(id)a4;
- (void)showKeyboard;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textContentViewDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSelectedDate:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASSettingsOofUIController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v7 = [(ASSettingsOofUIController *)self table];
      [v7 setKeyboardDismissMode:1];
    }

    v8 = [(ASSettingsOofUIController *)self specifier];
    v9 = [v8 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"kPSOofServerData"];
    [(ASSettingsOofUIController *)self setServerData:v10];

    [(ASSettingsOofUIController *)self _resetAllOutOfOfficeLocalValueToServerValue:1];
    v11 = +[NSMutableArray array];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"OOF_STATE" value:&stru_30C98 table:@"ASAccountSetup"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setOofState:withSpecifier:" get:"oofStateWithSpecifier:" detail:objc_opt_class() cell:6 edit:0];

    [v14 setIdentifier:@"kPSOofStateIdentifier"];
    [(ASSettingsOofUIController *)self setMailSwitchSpecifier:v14];
    [v11 addObject:v14];
    if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState])
    {
      v15 = [(ASSettingsOofUIController *)self outOfOfficeEndDateDisplaySpecifier];
      [v11 addObject:v15];

      v16 = [(ASSettingsOofUIController *)self autoReplyTextCellSpecifiers];
      [v11 addObjectsFromArray:v16];

      v17 = [(ASSettingsOofUIController *)self externalMessageGroupSpecifiers];
      [v11 addObjectsFromArray:v17];
    }

    v18 = *&self->ACUIViewController_opaque[v3];
    *&self->ACUIViewController_opaque[v3] = v11;

    v4 = *&self->ACUIViewController_opaque[v3];
  }

  return v4;
}

- (id)externalSpecifersToRemoveAll:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableArray array];
  v6 = v5;
  if (v3)
  {
    [v5 addObject:@"kPSOofExternalMessageSpacerSpecifierID"];
    [v6 addObject:@"kPSOofExternalMessageStateGroupSpecifierID"];
  }

  [v6 addObject:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"];
  [v6 addObject:@"kPSOofExternalMessageGroupSpecifierID"];
  [v6 addObject:@"kPSOofExternalMessageTextBoxSpecifierID"];
  v7 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofExternalMessageSpacerSpecifierID"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE_DESCRIPTION" value:&stru_30C98 table:@"ASAccountSetup"];
  [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  [(ASSettingsOofUIController *)self reloadSpecifier:v7 animated:1];

  return v6;
}

- (id)externalMessageRadioSpecifiers
{
  externalMessageGroupSpecifiers = self->_externalMessageGroupSpecifiers;
  if (!externalMessageGroupSpecifiers)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE_AUDIENCE" value:&stru_30C98 table:@"ASAccountSetup"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setExternalAudienceProperty:withSpecifier:" get:"externalAudiencePropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"OOF_EXTERNAL_CONTACTS_ONLY" value:&stru_30C98 table:@"ASAccountSetup"];
    v15[0] = v8;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OOF_EXTERNAL_EVERYONE" value:&stru_30C98 table:@"ASAccountSetup"];
    v15[1] = v10;
    v11 = [NSArray arrayWithObjects:v15 count:2];

    [v6 setValues:&off_32790 titles:v11];
    [v6 setProperty:&off_325D0 forKey:PSDefaultValueKey];
    [v6 setIdentifier:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"];
    v12 = +[NSMutableArray array];
    [(NSArray *)v12 addObject:v6];
    v13 = self->_externalMessageGroupSpecifiers;
    self->_externalMessageGroupSpecifiers = v12;

    externalMessageGroupSpecifiers = self->_externalMessageGroupSpecifiers;
  }

  return externalMessageGroupSpecifiers;
}

- (id)externalAutoReplyTextboxSpecifiers
{
  v3 = [(ASSettingsOofUIController *)self externalMessageSpecifiers];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v7 setIdentifier:@"kPSOofExternalMessageGroupSpecifierID"];
    [v4 addObject:v7];
    v8 = [PSSpecifier preferenceSpecifierNamed:@"EXTERNAL_AUTO_REPLY_TEXT_BOX" target:self set:"setExternalAutoReplyText:withSpecifier:" get:"externalAutoReplyTextWithSpecifier:" detail:0 cell:14 edit:0];
    [v8 setIdentifier:@"kPSOofExternalMessageTextBoxSpecifierID"];
    LODWORD(v9) = 11.0;
    v10 = [NSNumber numberWithFloat:v9];
    [v8 setProperty:v10 forKey:PSTextViewBottomMarginKey];

    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v8 setProperty:self forKey:@"kPSOofTextViewdelegate"];
    [v4 addObject:v8];
    [(ASSettingsOofUIController *)self setExternalMessageSpecifiers:v4];
  }

  return [(ASSettingsOofUIController *)self externalMessageSpecifiers];
}

- (NSArray)externalMessageGroupSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setOofExternalMessageState:withSpecifier:" get:"oofExternalMessageStateWithSpecifier:" detail:objc_opt_class() cell:6 edit:0];

  [v6 setIdentifier:@"kPSOofExternalMessageStateGroupSpecifierID"];
  v7 = +[PSSpecifier emptyGroupSpecifier];
  [v7 setIdentifier:@"kPSOofExternalMessageSpacerSpecifierID"];
  if (![(ASSettingsOofUIController *)self oooExternalMessageAudience])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE_DESCRIPTION" value:&stru_30C98 table:@"ASAccountSetup"];
    [v7 setProperty:v9 forKey:PSFooterTextGroupKey];
  }

  [v3 addObject:v7];
  [v3 addObject:v6];
  if ([(ASSettingsOofUIController *)self oooExternalMessageAudience])
  {
    v10 = [(ASSettingsOofUIController *)self externalMessageRadioSpecifiers];
    [v3 addObjectsFromArray:v10];

    v11 = [(ASSettingsOofUIController *)self externalAutoReplyTextboxSpecifiers];
    [v3 addObjectsFromArray:v11];
  }

  return v3;
}

- (id)outOfOfficeEndDateDisplaySpecifier
{
  v3 = [(ASSettingsOofUIController *)self currentEndTimeSpecifier];

  if (!v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OOF_END_DATE" value:&stru_30C98 table:@"ASAccountSetup"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"currentDateString:" detail:0 cell:4 edit:0];

    [v6 setIdentifier:@"kPSOofScheduleEndDate"];
    v7 = [NSNumber numberWithBool:1];
    [v6 setProperty:v7 forKey:PSHidesDisclosureIndicatorKey];

    [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(ASSettingsOofUIController *)self setCurrentEndTimeSpecifier:v6];
  }

  v8 = [(ASSettingsOofUIController *)self currentEndTimeSpecifier];
  v9 = [NSNumber numberWithBool:[(ASSettingsOofUIController *)self datePickerShowing]];
  [v8 setProperty:v9 forKey:@"kPSOofScheduleEndDateTextColor"];

  return [(ASSettingsOofUIController *)self currentEndTimeSpecifier];
}

- (id)timePickerSpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:&stru_30C98 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v3 setIdentifier:@"kPSOofDatePickerSpecifierID"];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v4 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
  [v3 setProperty:v4 forKey:@"kPSOofPickerSelectedDate"];

  [v3 setProperty:self forKey:@"kPSOofDateTimePickerDelegate"];
  v5 = [(ASSettingsOofUIController *)self layoutDatePicker];
  [v5 as_preferredHeight];
  *&v6 = v6;
  v7 = [NSNumber numberWithFloat:v6];
  [v3 setProperty:v7 forKey:PSTableCellHeightKey];

  return v3;
}

- (id)autoReplyTextCellSpecifiers
{
  v3 = [(ASSettingsOofUIController *)self messageSpecifiers];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"OOF_INTERNAL_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v7 setIdentifier:@"kPSOofMessageGroupSpecifierID"];
    [v4 addObject:v7];
    v8 = [PSSpecifier preferenceSpecifierNamed:@"AUTO_REPLY_TEXT_BOX" target:self set:"setAutoReplyText:withSpecifier:" get:"autoReplyTextWithSpecifier:" detail:0 cell:14 edit:0];
    [v8 setIdentifier:@"kPSOofMessage"];
    LODWORD(v9) = 11.0;
    v10 = [NSNumber numberWithFloat:v9];
    [v8 setProperty:v10 forKey:PSTextViewBottomMarginKey];

    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v8 setProperty:self forKey:@"kPSOofTextViewdelegate"];
    [v4 addObject:v8];
    [(ASSettingsOofUIController *)self setMessageSpecifiers:v4];
  }

  return [(ASSettingsOofUIController *)self messageSpecifiers];
}

- (id)oofStateWithSpecifier:(id)a3
{
  v3 = [(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState];

  return [NSNumber numberWithInt:v3];
}

- (void)setOofState:(id)a3 withSpecifier:(id)a4
{
  if (![a3 BOOLValue])
  {
    [(ASSettingsOofUIController *)self _removeAdditionalOOOSpecifiersAnimated:1];
    [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:0];
    v6 = [(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState];
    v7 = [(ASSettingsOofUIController *)self serverData];
    v8 = [v7 oofState];

    v9 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    if (v6 == v8)
    {
      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
LABEL_9:
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v10];
      goto LABEL_10;
    }

LABEL_8:
    v10 = v9 | 1;
    goto LABEL_9;
  }

  [(ASSettingsOofUIController *)self _resetAllOutOfOfficeLocalValueToServerValue:0];
  [(ASSettingsOofUIController *)self _insertAdditionalOOOSpecifiersAnimated:1];
  [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:1];
  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFFELL];
  v5 = [(ASSettingsOofUIController *)self serverData];
  if ([v5 oofState] == 1)
  {

    goto LABEL_10;
  }

  v11 = [(ASSettingsOofUIController *)self serverData];
  v12 = [v11 oofState];

  if (v12 != 2)
  {
    v9 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    goto LABEL_8;
  }

LABEL_10:

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (id)oofExternalMessageStateWithSpecifier:(id)a3
{
  v3 = [(ASSettingsOofUIController *)self oooExternalMessageAudience];

  return [NSNumber numberWithInt:v3];
}

- (void)setOofExternalMessageState:(id)a3 withSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = [(ASSettingsOofUIController *)self serverData];
    if ([v5 externalState])
    {
      v6 = [(ASSettingsOofUIController *)self serverData];
      -[ASSettingsOofUIController setOooExternalMessageAudience:](self, "setOooExternalMessageAudience:", [v6 externalState]);
    }

    else
    {
      [(ASSettingsOofUIController *)self setOooExternalMessageAudience:1];
    }

    v7 = [(ASSettingsOofUIController *)self serverData];
    v8 = [v7 externalMessage];
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v8];

    [(ASSettingsOofUIController *)self _insertAdditionalExternalSpecifiersAnimated:1];
  }

  else
  {
    [(ASSettingsOofUIController *)self setOooExternalMessageAudience:0];
    [(ASSettingsOofUIController *)self _removeAdditionalExternalSpecifiersAnimated:1];
  }

  v9 = [(ASSettingsOofUIController *)self oooExternalMessageAudience];
  v10 = [(ASSettingsOofUIController *)self serverData];
  LOBYTE(v9) = v9 != [v10 externalState];

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFEFLL | (16 * (v9 & 1))];

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)setAutoReplyText:(id)a3 withSpecifier:(id)a4
{
  v13 = [a4 propertyForKey:PSTableCellKey];
  v5 = [v13 textView];
  v6 = [v5 text];
  [(ASSettingsOofUIController *)self setAutoReplyMessage:v6];

  v7 = [(ASSettingsOofUIController *)self autoReplyMessage];
  v8 = [(ASSettingsOofUIController *)self serverData];
  v9 = [v8 message];
  v10 = [v7 isEqualToString:v9];

  v11 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFFBLL;
  v12 = 4;
  if (v10)
  {
    v12 = 0;
  }

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v11 | v12];
  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)setExternalAutoReplyText:(id)a3 withSpecifier:(id)a4
{
  v13 = [a4 propertyForKey:PSTableCellKey];
  v5 = [v13 textView];
  v6 = [v5 text];
  [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v6];

  v7 = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
  v8 = [(ASSettingsOofUIController *)self serverData];
  v9 = [v8 externalMessage];
  v10 = [v7 isEqualToString:v9];

  v11 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFF7;
  v12 = 8;
  if (v10)
  {
    v12 = 0;
  }

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v11 | v12];
  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)setExternalAudienceProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a4;
  v7 = [a3 intValue];
  v10 = [v6 identifier];

  if ([v10 isEqualToString:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"] && v7 != -[ASSettingsOofUIController oooExternalMessageAudience](self, "oooExternalMessageAudience"))
  {
    [(ASSettingsOofUIController *)self setOooExternalMessageAudience:v7];
    v8 = [(ASSettingsOofUIController *)self serverData];
    v9 = v7 != [v8 externalState];

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFEFLL | (16 * v9)];
  }

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (id)externalAudiencePropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"])
  {
    v5 = [(ASSettingsOofUIController *)self oooExternalMessageAudience];
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSNumber numberWithInt:v5];

  return v6;
}

- (id)_stringFormatOfDate:(id)a3
{
  v3 = a3;
  v4 = qword_3A2D8;
  if (!qword_3A2D8)
  {
    v5 = +[NSLocale currentLocale];
    v6 = [NSDateFormatter dateFormatFromTemplate:@"EEEE options:MMMM d" locale:0, v5];

    v7 = objc_alloc_init(NSDateFormatter);
    v8 = qword_3A2D8;
    qword_3A2D8 = v7;

    [qword_3A2D8 setDateFormat:v6];
    v4 = qword_3A2D8;
  }

  v9 = [v4 stringFromDate:v3];

  return v9;
}

- (id)_composeNewAutoReplyStringWithDate:(id)a3
{
  if (a3)
  {
    v3 = [(ASSettingsOofUIController *)self _stringFormatOfDate:?];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OOF_DEFAULT_AUTO_REPLY_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];

    v6 = [NSString stringWithFormat:v5, v3];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v3 localizedStringForKey:@"OOF_DEFAULT_AUTO_REPLY_MESSAGE_WITHOUT_DATE" value:&stru_30C98 table:@"ASAccountSetup"];
  }

  return v6;
}

- (id)_updateAutoReplyMessage:(id)a3 withDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(ASSettingsOofUIController *)self previousUserSelectedAutoReplyEndDate];

  if (v9)
  {
    v10 = [(ASSettingsOofUIController *)self previousUserSelectedAutoReplyEndDate];
    v11 = [(ASSettingsOofUIController *)self _stringFormatOfDate:v10];

    v12 = [v8 rangeOfString:v11];
    v14 = v13;

    v15 = v11 == 0;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v15 = 1;
  }

  v16 = [(ASSettingsOofUIController *)self _stringFormatOfDate:v7];
  if (!v15 && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [v8 stringByReplacingCharactersInRange:v12 withString:{v14, v16}];
LABEL_10:
    v21 = v17;

    goto LABEL_11;
  }

  if (![v8 length])
  {
    goto LABEL_9;
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"OOF_DEFAULT_AUTO_REPLY_MESSAGE_WITHOUT_DATE" value:&stru_30C98 table:@"ASAccountSetup"];
  v20 = [v8 isEqualToString:v19];

  v21 = v8;
  if (v20)
  {
LABEL_9:
    v17 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:v7];
    goto LABEL_10;
  }

LABEL_11:
  v22 = v21;

  return v21;
}

- (void)_updateAllAutoReplyMessages:(id)a3
{
  v14 = a3;
  v4 = [(ASSettingsOofUIController *)self autoReplyMessage];
  v5 = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
  v6 = [v4 isEqualToString:v5];

  v7 = [(ASSettingsOofUIController *)self autoReplyMessage];
  v8 = [(ASSettingsOofUIController *)self _updateAutoReplyMessage:v7 withDate:v14];

  v9 = [(ASSettingsOofUIController *)self autoReplyMessage];
  v10 = [v9 isEqualToString:v8];

  if ((v10 & 1) == 0)
  {
    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 4];
  }

  if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 4) != 0)
  {
    [(ASSettingsOofUIController *)self setAutoReplyMessage:v8];
    [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofMessage" animated:0];
  }

  if (v6 && ([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 4) != 0)
  {
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v8];
    if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 4) != 0)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 8];
    }
  }

  else
  {
    v11 = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
    v12 = [(ASSettingsOofUIController *)self _updateAutoReplyMessage:v11 withDate:v14];

    v13 = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
    LOBYTE(v11) = [v13 isEqualToString:v12];

    if (v11)
    {
      goto LABEL_12;
    }

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 8];
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v12];
    v8 = v12;
  }

  [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofExternalMessageTextBoxSpecifierID" animated:0];
  v12 = v8;
LABEL_12:
  [(ASSettingsOofUIController *)self setPreviousUserSelectedAutoReplyEndDate:v14];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = ASSettingsOofUIController;
  [(ASSettingsOofUIController *)&v22 viewDidLoad];
  v3 = [(ASSettingsOofUIController *)self saveButton];

  if (!v3)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SAVE" value:&stru_30C98 table:@"Localizable"];
    v7 = [v4 initWithTitle:v6 style:2 target:self action:"saveButtonTapped:"];
    [(ASSettingsOofUIController *)self setSaveButton:v7];
  }

  v8 = [(ASSettingsOofUIController *)self cancelButton];

  if (!v8)
  {
    v9 = [UIBarButtonItem alloc];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_30C98 table:@"Localizable"];
    v12 = [v9 initWithTitle:v11 style:2 target:self action:"cancelButtonTapped:"];
    [(ASSettingsOofUIController *)self setCancelButton:v12];
  }

  v13 = [(ASSettingsOofUIController *)self cancelButton];
  v14 = [(ASSettingsOofUIController *)self navigationItem];
  [v14 setLeftBarButtonItem:v13];

  v15 = [(ASSettingsOofUIController *)self saveButton];
  v16 = [(ASSettingsOofUIController *)self navigationItem];
  [v16 setRightBarButtonItem:v15];

  v17 = +[UIDatePicker as_newConfiguredPicker];
  [(ASSettingsOofUIController *)self setLayoutDatePicker:v17];

  v18 = [(ASSettingsOofUIController *)self layoutDatePicker];
  [v18 setHidden:1];

  v19 = [(ASSettingsOofUIController *)self table];
  v20 = [(ASSettingsOofUIController *)self layoutDatePicker];
  [v19 insertSubview:v20 atIndex:0];

  v21 = [(ASSettingsOofUIController *)self layoutDatePicker];
  [v21 as_installConstraints];

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)traitCollectionDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = ASSettingsOofUIController;
  v4 = a3;
  [(ASSettingsOofUIController *)&v14 traitCollectionDidChange:v4];
  v5 = [(ASSettingsOofUIController *)self traitCollection:v14.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if ([(ASSettingsOofUIController *)self datePickerShowing]&& v6 != v7)
  {
    v8 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    v9 = [(ASSettingsOofUIController *)self indexPathForSpecifier:v8];
    v10 = [(ASSettingsOofUIController *)self table];
    v11 = [v10 cellForRowAtIndexPath:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 datePicker];
      [v12 as_preferredHeight];
      v13 = [NSNumber numberWithDouble:?];
      [v8 setProperty:v13 forKey:PSTableCellHeightKey];

      [(ASSettingsOofUIController *)self reloadSpecifier:v8];
    }
  }
}

- (void)saveButtonTapped:(id)a3
{
  v4 = a3;
  v23 = objc_alloc_init(DAOofSettingsInfo);
  if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState])
  {
    v5 = [(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState];
  }

  else
  {
    v6 = [(ASSettingsOofUIController *)self serverData];
    [v6 setExternalState:0];
    [v23 setExternalState:0];

    v5 = 0;
  }

  [v23 setOofState:v5];
  if ((-[ASSettingsOofUIController ASOutOfOfficeDirtyStates](self, "ASOutOfOfficeDirtyStates") & 2) != 0 && [v23 oofState] == 2)
  {
    v7 = [(ASSettingsOofUIController *)self autoReplyStartDate];
    [v23 setStartTime:v7];

    v8 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
    [v23 setEndTime:v8];
  }

  else
  {
    v9 = [(ASSettingsOofUIController *)self serverData];
    v10 = [v9 startTime];
    [v23 setStartTime:v10];

    v8 = [(ASSettingsOofUIController *)self serverData];
    v11 = [v8 endTime];
    [v23 setEndTime:v11];
  }

  if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 4) != 0)
  {
    goto LABEL_11;
  }

  v12 = [(ASSettingsOofUIController *)self serverData];
  v13 = [v12 message];
  v14 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:v13];
  v15 = [v14 length];

  if (!v15)
  {
LABEL_11:
    v16 = [(ASSettingsOofUIController *)self autoReplyMessage];
    [v23 setMessage:v16];
  }

  else
  {
    v16 = [(ASSettingsOofUIController *)self serverData];
    v17 = [v16 message];
    [v23 setMessage:v17];
  }

  if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0x10) != 0)
  {
    [v23 setExternalState:{-[ASSettingsOofUIController oooExternalMessageAudience](self, "oooExternalMessageAudience")}];
  }

  else
  {
    v18 = [(ASSettingsOofUIController *)self serverData];
    [v23 setExternalState:{objc_msgSend(v18, "externalState")}];
  }

  if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 8) != 0)
  {
    v19 = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
    [v23 setExternalMessage:v19];
  }

  else
  {
    v19 = [(ASSettingsOofUIController *)self serverData];
    v20 = [v19 externalMessage];
    [v23 setExternalMessage:v20];
  }

  v21 = OBJC_IVAR___PSViewController__specifier;
  v22 = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] target];
  [v22 da_performSelectorThatDoesntAffectRetainCount:*(*&self->ACUIViewController_opaque[v21] + OBJC_IVAR___PSSpecifier_setter) withObject:v23];

  [(ASSettingsOofUIController *)self dismissAnimated:1];
}

- (void)enableSaveButton
{
  v3 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]!= 0;
  v5 = [(ASSettingsOofUIController *)self navigationItem];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:v3];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v8 = 1;
  if ([(ASSettingsOofUIController *)self datePickerShowing])
  {
    v6 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    v7 = [(ASSettingsOofUIController *)self indexPathForSpecifier:v6];

    if (v7 == v5)
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = ASSettingsOofUIController;
  v7 = a4;
  [(ASSettingsOofUIController *)&v16 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(ASSettingsOofUIController *)self currentEndTimeSpecifier:v16.receiver];
  v9 = [(ASSettingsOofUIController *)self indexPathForSpecifier:v8];

  LODWORD(v8) = [v7 isEqual:v9];
  v10 = [(ASSettingsOofUIController *)self datePickerShowing];
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      [(ASSettingsOofUIController *)self setDatePickerShowing:1];
      v12 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      [(ASSettingsOofUIController *)self updateSelectedDate:v12];

      v13 = [(ASSettingsOofUIController *)self timePickerSpecifier];
      [(ASSettingsOofUIController *)self insertSpecifier:v13 afterSpecifierID:@"kPSOofScheduleEndDate" animated:1];

      [v6 scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:1];
      goto LABEL_8;
    }

    v11 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    [(ASSettingsOofUIController *)self setDatePickerShowing:0];
    [(ASSettingsOofUIController *)self removeSpecifier:v11 animated:1];
    goto LABEL_6;
  }

  if (v10)
  {
    v11 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    [(ASSettingsOofUIController *)self removeSpecifier:v11 animated:1];
    [(ASSettingsOofUIController *)self setDatePickerShowing:0];
LABEL_6:
  }

LABEL_8:
  v14 = [(ASSettingsOofUIController *)self currentEndTimeSpecifier];
  v15 = [NSNumber numberWithBool:[(ASSettingsOofUIController *)self datePickerShowing]];
  [v14 setProperty:v15 forKey:@"kPSOofScheduleEndDateTextColor"];

  [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofScheduleEndDate" animated:0];
  [(ASSettingsOofUIController *)self dismissKeyboard];
}

- (id)currentDateString:(id)a3
{
  v4 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
  if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2 || (v4 & 2) != 0)
  {
    v7 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];

    if (v7)
    {
      v8 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      v9 = [NSDateFormatter localizedStringFromDate:v8 dateStyle:2 timeStyle:1];

      [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:2];
      goto LABEL_8;
    }

    v5 = +[NSDate date];
    v6 = [NSDateFormatter localizedStringFromDate:v5 dateStyle:2 timeStyle:1];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"OOF_NO_END_DATE" value:&stru_30C98 table:@"ASAccountSetup"];
  }

  v9 = v6;

LABEL_8:

  return v9;
}

- (void)_resetAllOutOfOfficeLocalValueToServerValue:(BOOL)a3
{
  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:0];
  v50 = +[NSDate date];
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  v5 = [v4 components:28 fromDate:v50];
  v6 = [v5 day];
  v7 = [v5 month];
  v8 = [v5 year];
  v9 = objc_alloc_init(NSDateComponents);
  [v9 setMinute:30];
  [v9 setHour:23];
  [v9 setDay:v6];
  [v9 setMonth:v7];
  [v9 setYear:v8];
  v10 = [v4 dateFromComponents:v9];
  v11 = [(ASSettingsOofUIController *)self serverData];
  -[ASSettingsOofUIController setASOutOfOfficeEnabledState:](self, "setASOutOfOfficeEnabledState:", [v11 oofState]);

  if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2)
  {
    v12 = [(ASSettingsOofUIController *)self serverData];
    v13 = [v12 startTime];
    [(ASSettingsOofUIController *)self setAutoReplyStartDate:v13];

    v14 = [(ASSettingsOofUIController *)self autoReplyStartDate];
    v15 = [v4 compareDate:v50 toDate:v14 toUnitGranularity:64];

    if (v15 == &dword_0 + 1)
    {
      [(ASSettingsOofUIController *)self setAutoReplyStartDate:v50];
    }

    else if (v15 == -1)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:0];
    }

    v16 = [(ASSettingsOofUIController *)self serverData];
    v17 = [v16 endTime];
    [(ASSettingsOofUIController *)self setUserSelectedAutoReplyEndDate:v17];
  }

  else
  {
    [(ASSettingsOofUIController *)self setAutoReplyStartDate:v50];
    [(ASSettingsOofUIController *)self setUserSelectedAutoReplyEndDate:v10];
  }

  v18 = [NSRegularExpression regularExpressionWithPattern:@"\r\n" options:0 error:0];
  v19 = [(ASSettingsOofUIController *)self serverData];
  v20 = [v19 message];

  if (v20)
  {
    v21 = [NSMutableString alloc];
    v22 = [(ASSettingsOofUIController *)self serverData];
    v23 = [v22 message];
    v24 = [v21 initWithString:v23];

    [v18 replaceMatchesInString:v24 options:0 range:0 withTemplate:{objc_msgSend(v24, "length"), @"<br>"}];
  }

  else
  {
    v25 = [(ASSettingsOofUIController *)self serverData];
    [v25 setMessage:&stru_30C98];

    v24 = 0;
  }

  v26 = [(ASSettingsOofUIController *)self serverData];
  v27 = [v26 message];
  v28 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:v27];
  v29 = [v28 length];

  if (v29)
  {
    [(ASSettingsOofUIController *)self setAutoReplyMessage:v24];
  }

  else
  {
    if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2)
    {
      v30 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      v31 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:v30];
      [(ASSettingsOofUIController *)self setAutoReplyMessage:v31];

      v32 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      [(ASSettingsOofUIController *)self setPreviousUserSelectedAutoReplyEndDate:v32];
    }

    else
    {
      v32 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:0];
      [(ASSettingsOofUIController *)self setAutoReplyMessage:v32];
    }

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 4];
    [(ASSettingsOofUIController *)self enableSaveButton];
  }

  v33 = [(ASSettingsOofUIController *)self serverData];
  -[ASSettingsOofUIController setOooExternalMessageAudience:](self, "setOooExternalMessageAudience:", [v33 externalState]);

  v34 = [(ASSettingsOofUIController *)self serverData];
  v35 = [v34 externalMessage];

  if (v35)
  {
    v36 = [NSMutableString alloc];
    v37 = [(ASSettingsOofUIController *)self serverData];
    v38 = [v37 externalMessage];
    v39 = [v36 initWithString:v38];

    [v18 replaceMatchesInString:v39 options:0 range:0 withTemplate:{objc_msgSend(v39, "length"), @"<br>"}];
    v24 = v39;
  }

  else
  {
    v40 = [(ASSettingsOofUIController *)self serverData];
    [v40 setExternalMessage:&stru_30C98];
  }

  v41 = [(ASSettingsOofUIController *)self serverData];
  v42 = [v41 externalMessage];
  v43 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:v42];
  v44 = [v43 length];

  if (v44)
  {
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v24];
    v45 = v49;
  }

  else
  {
    if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2)
    {
      v46 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      v47 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:v46];
      [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v47];

      v48 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      [(ASSettingsOofUIController *)self setPreviousUserSelectedAutoReplyEndDate:v48];
    }

    else
    {
      v48 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:0];
      [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v48];
    }

    v45 = v49;

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 8];
    [(ASSettingsOofUIController *)self enableSaveButton];
  }
}

- (void)datePickerCell:(id)a3 changedDate:(id)a4
{
  v6 = a4;
  [a3 setProperty:v6 forKey:@"kPSOofPickerSelectedDate"];
  [(ASSettingsOofUIController *)self updateSelectedDate:v6];
}

- (void)updateSelectedDate:(id)a3
{
  v10 = a3;
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  [(ASSettingsOofUIController *)self setUserSelectedAutoReplyEndDate:v10];
  v5 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
  v6 = [(ASSettingsOofUIController *)self serverData];
  v7 = [v6 endTime];
  v8 = [v4 compareDate:v5 toDate:v7 toUnitGranularity:64];

  v9 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
  if (v8)
  {
    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v9 | 2];
    [(ASSettingsOofUIController *)self _updateAllAutoReplyMessages:v10];
    [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofScheduleEndDate" animated:0];
  }

  else
  {
    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v9 & 0xFFFFFFFFFFFFFFFDLL];
  }

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)textContentViewDidChange:(id)a3
{
  v54 = a3;
  v4 = [(ASSettingsOofUIController *)self messageSpecifiers];
  v5 = [v4 objectAtIndexedSubscript:1];

  v6 = PSTableCellKey;
  v52 = [v5 propertyForKey:PSTableCellKey];
  v7 = [v52 textView];
  v8 = [(ASSettingsOofUIController *)self externalMessageSpecifiers];
  v9 = [v8 objectAtIndexedSubscript:1];

  v10 = [(ASSettingsOofUIController *)self externalMessageSpecifiers];
  v11 = [v10 objectAtIndexedSubscript:1];
  v12 = [v11 propertyForKey:v6];

  v50 = v12;
  v13 = [v12 textView];
  v53 = v5;
  v51 = v9;
  if (v7 == v54)
  {
    v14 = v5;
  }

  else
  {
    v14 = v9;
  }

  v48 = v13;
  if (v7 == v54)
  {
    v15 = v7;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14;
  v17 = v15;
  v18 = [v16 propertyForKey:PSTextViewBottomMarginKey];
  if (v18)
  {
    PSTextViewInsets();
    v20 = v19;
    v22 = v21;
    v23 = [v17 webView];
    [v23 frame];
    v24 = v22 + v20 + CGRectGetHeight(v56);
    [v18 floatValue];
    v26 = v24 + v25;

    *&v27 = v26;
    v28 = [NSNumber numberWithFloat:v27];
    v29 = PSTableCellHeightKey;
    v30 = [v16 propertyForKey:PSTableCellHeightKey];
    v31 = [v30 isEqual:v28];

    if ((v31 & 1) == 0)
    {
      v32 = [v16 target];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v16 target];
        v34 = [v33 table];
      }

      else
      {
        v34 = 0;
      }

      v35 = +[UIView areAnimationsEnabled];
      [UIView setAnimationsEnabled:0];
      [v34 beginUpdates];
      [v16 setProperty:v28 forKey:v29];
      [v34 endUpdates];
      [UIView setAnimationsEnabled:v35];
    }
  }

  v36 = [v17 text];
  v37 = [(ASSettingsOofUIController *)self serverData];
  if (v7 == v54)
  {
    v43 = [v37 message];
    v44 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:v43];
    v45 = [v36 compare:v44];

    v46 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    if (v45)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v46 | 4];
      v42 = [v54 text];
      [(ASSettingsOofUIController *)self setAutoReplyMessage:v42];
      goto LABEL_19;
    }

    v47 = v46 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v38 = [v37 externalMessage];
    v39 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:v38];
    v40 = [v36 compare:v39];

    v41 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    if (v40)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v41 | 8];
      v42 = [v54 text];
      [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v42];
LABEL_19:

      goto LABEL_23;
    }

    v47 = v41 & 0xFFFFFFFFFFFFFFF7;
  }

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v47];
LABEL_23:
  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)dismissKeyboard
{
  v2 = [(ASSettingsOofUIController *)self table];
  v3 = [v2 window];
  v4 = [v3 firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 resignFirstResponder];
  }
}

- (void)showKeyboard
{
  v2 = [(ASSettingsOofUIController *)self messageSpecifiers];
  v3 = [v2 objectAtIndexedSubscript:1];
  v6 = [v3 propertyForKey:PSTableCellKey];

  v4 = [v6 textView];
  v5 = v4;
  if (v4)
  {
    [v4 becomeFirstResponder];
  }
}

- (id)trimWhitespaceAndNewlinesFromString:(id)a3
{
  v3 = [(ASSettingsOofUIController *)self serverData];
  v4 = [v3 message];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

@end
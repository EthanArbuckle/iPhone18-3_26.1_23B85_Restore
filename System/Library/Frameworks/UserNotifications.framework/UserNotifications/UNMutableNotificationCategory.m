@interface UNMutableNotificationCategory
- (UNMutableNotificationCategory)initWithIdentifier:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setActions:(id)a3;
- (void)setActionsMenuTitle:(id)a3;
- (void)setCategorySummaryFormat:(id)a3;
- (void)setHiddenPreviewsBodyPlaceholder:(id)a3;
- (void)setIntentIdentifiers:(id)a3;
- (void)setMinimalActions:(id)a3;
@end

@implementation UNMutableNotificationCategory

- (UNMutableNotificationCategory)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = UNMutableNotificationCategory;
  return [(UNNotificationCategory *)&v4 _initWithIdentifier:a3 actions:MEMORY[0x1E695E0F0] minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:MEMORY[0x1E695E0F0] hiddenPreviewsBodyPlaceholder:&stru_1F308F460 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:0 options:0 backgroundStyle:0 listPriority:?];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v14 = [UNNotificationCategory allocWithZone:a3];
  v13 = [(UNNotificationCategory *)self identifier];
  v4 = [(UNNotificationCategory *)self actions];
  v5 = [(UNNotificationCategory *)self minimalActions];
  v6 = [(UNNotificationCategory *)self alternateAction];
  v7 = [(UNNotificationCategory *)self intentIdentifiers];
  v8 = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v9 = [(UNNotificationCategory *)self categorySummaryFormat];
  v10 = [(UNNotificationCategory *)self actionsMenuTitle];
  v11 = [(UNNotificationCategory *)v14 _initWithIdentifier:v13 actions:v4 minimalActions:v5 alternateAction:v6 intentIdentifiers:v7 hiddenPreviewsBodyPlaceholder:v8 categorySummaryFormat:v9 actionsMenuTitle:v10 options:[(UNNotificationCategory *)self options] backgroundStyle:[(UNNotificationCategory *)self backgroundStyle] listPriority:[(UNNotificationCategory *)self listPriority]];

  return v11;
}

- (void)setActions:(id)a3
{
  v4 = [a3 copy];
  actions = self->super._actions;
  self->super._actions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMinimalActions:(id)a3
{
  v4 = [a3 copy];
  minimalActions = self->super._minimalActions;
  self->super._minimalActions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentIdentifiers:(id)a3
{
  v4 = [a3 copy];
  intentIdentifiers = self->super._intentIdentifiers;
  self->super._intentIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHiddenPreviewsBodyPlaceholder:(id)a3
{
  v4 = [a3 copy];
  hiddenPreviewsBodyPlaceholder = self->super._hiddenPreviewsBodyPlaceholder;
  self->super._hiddenPreviewsBodyPlaceholder = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCategorySummaryFormat:(id)a3
{
  v4 = [a3 copy];
  categorySummaryFormat = self->super._categorySummaryFormat;
  self->super._categorySummaryFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setActionsMenuTitle:(id)a3
{
  v4 = [a3 copy];
  actionsMenuTitle = self->super._actionsMenuTitle;
  self->super._actionsMenuTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
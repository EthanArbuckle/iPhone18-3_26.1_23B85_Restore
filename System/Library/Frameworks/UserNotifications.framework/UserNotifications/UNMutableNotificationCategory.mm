@interface UNMutableNotificationCategory
- (UNMutableNotificationCategory)initWithIdentifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setActions:(id)actions;
- (void)setActionsMenuTitle:(id)title;
- (void)setCategorySummaryFormat:(id)format;
- (void)setHiddenPreviewsBodyPlaceholder:(id)placeholder;
- (void)setIntentIdentifiers:(id)identifiers;
- (void)setMinimalActions:(id)actions;
@end

@implementation UNMutableNotificationCategory

- (UNMutableNotificationCategory)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = UNMutableNotificationCategory;
  return [(UNNotificationCategory *)&v4 _initWithIdentifier:identifier actions:MEMORY[0x1E695E0F0] minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:MEMORY[0x1E695E0F0] hiddenPreviewsBodyPlaceholder:&stru_1F308F460 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:0 options:0 backgroundStyle:0 listPriority:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v14 = [UNNotificationCategory allocWithZone:zone];
  identifier = [(UNNotificationCategory *)self identifier];
  actions = [(UNNotificationCategory *)self actions];
  minimalActions = [(UNNotificationCategory *)self minimalActions];
  alternateAction = [(UNNotificationCategory *)self alternateAction];
  intentIdentifiers = [(UNNotificationCategory *)self intentIdentifiers];
  hiddenPreviewsBodyPlaceholder = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  categorySummaryFormat = [(UNNotificationCategory *)self categorySummaryFormat];
  actionsMenuTitle = [(UNNotificationCategory *)self actionsMenuTitle];
  v11 = [(UNNotificationCategory *)v14 _initWithIdentifier:identifier actions:actions minimalActions:minimalActions alternateAction:alternateAction intentIdentifiers:intentIdentifiers hiddenPreviewsBodyPlaceholder:hiddenPreviewsBodyPlaceholder categorySummaryFormat:categorySummaryFormat actionsMenuTitle:actionsMenuTitle options:[(UNNotificationCategory *)self options] backgroundStyle:[(UNNotificationCategory *)self backgroundStyle] listPriority:[(UNNotificationCategory *)self listPriority]];

  return v11;
}

- (void)setActions:(id)actions
{
  v4 = [actions copy];
  actions = self->super._actions;
  self->super._actions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMinimalActions:(id)actions
{
  v4 = [actions copy];
  minimalActions = self->super._minimalActions;
  self->super._minimalActions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  intentIdentifiers = self->super._intentIdentifiers;
  self->super._intentIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHiddenPreviewsBodyPlaceholder:(id)placeholder
{
  v4 = [placeholder copy];
  hiddenPreviewsBodyPlaceholder = self->super._hiddenPreviewsBodyPlaceholder;
  self->super._hiddenPreviewsBodyPlaceholder = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCategorySummaryFormat:(id)format
{
  v4 = [format copy];
  categorySummaryFormat = self->super._categorySummaryFormat;
  self->super._categorySummaryFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setActionsMenuTitle:(id)title
{
  v4 = [title copy];
  actionsMenuTitle = self->super._actionsMenuTitle;
  self->super._actionsMenuTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
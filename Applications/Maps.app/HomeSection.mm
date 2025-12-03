@interface HomeSection
- (HomeSection)initWithType:(int64_t)type contents:(id)contents showsSectionButton:(BOOL)button customLocalizedName:(id)name;
- (NSString)_maps_diffableDataSourceIdentifier;
- (NSString)localizedButtonName;
- (NSString)localizedName;
- (UIKeyCommand)keyCommand;
@end

@implementation HomeSection

- (UIKeyCommand)keyCommand
{
  v3 = 0;
  type = self->_type;
  if (type > 3)
  {
    if (type == 4)
    {
      goto LABEL_14;
    }

    if (type != 5)
    {
      if (type == 6)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v5 = @"[Proactive Tray] See All Recents Command";
    goto LABEL_12;
  }

  if (type < 2)
  {
    goto LABEL_14;
  }

  if (type == 2)
  {
    v5 = @"[Proactive Tray] See All Favorites Command";
    goto LABEL_12;
  }

  if (type == 3)
  {
    v5 = @"[Proactive Tray] See All My Guides Command";
LABEL_12:
    v6 = +[NSBundle mainBundle];
    v3 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

    type = self->_type;
  }

LABEL_13:
  v7 = [NSNumber numberWithInteger:type];
  stringValue = [v7 stringValue];
  v9 = [UIKeyCommand commandWithTitle:v3 image:0 action:"handleHomeSectionKeyCommand:" input:stringValue modifierFlags:1572864 propertyList:0];

  v3 = v9;
LABEL_14:

  return v3;
}

- (NSString)localizedName
{
  customLocalizedName = self->_customLocalizedName;
  if (customLocalizedName)
  {
    v3 = customLocalizedName;
    goto LABEL_15;
  }

  type = self->_type;
  v3 = &stru_1016631F0;
  if (type > 2)
  {
    if (type == 3)
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"[Proactive Tray] Guides Section";
    }

    else
    {
      if (type != 5)
      {
        goto LABEL_15;
      }

      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"[Proactive Tray] Recents Section";
    }
  }

  else if (type == 1)
  {
    v8 = +[MapsSuggestionsSiri isEnabled];
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (v8)
    {
      v7 = @"[Proactive Tray] Suggestion Section";
    }

    else
    {
      v7 = @"[Proactive Tray] Shared Trip Section";
    }
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_15;
    }

    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"[Proactive Tray] Favorites Section";
  }

  v3 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

LABEL_15:

  return v3;
}

- (NSString)localizedButtonName
{
  type = self->_type;
  v3 = type > 5;
  v4 = (1 << type) & 0x2C;
  if (v3 || v4 == 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Proactive Tray] More Button" value:@"localized string not found" table:0];
  }

  return v7;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  v2 = self->_type - 1;
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return &off_101622C18[v2]->isa;
  }
}

- (HomeSection)initWithType:(int64_t)type contents:(id)contents showsSectionButton:(BOOL)button customLocalizedName:(id)name
{
  contentsCopy = contents;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = HomeSection;
  v12 = [(HomeSection *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    v14 = [contentsCopy copy];
    contents = v13->_contents;
    v13->_contents = v14;

    v13->_showsSectionButton = button;
    v16 = [nameCopy copy];
    customLocalizedName = v13->_customLocalizedName;
    v13->_customLocalizedName = v16;
  }

  return v13;
}

@end
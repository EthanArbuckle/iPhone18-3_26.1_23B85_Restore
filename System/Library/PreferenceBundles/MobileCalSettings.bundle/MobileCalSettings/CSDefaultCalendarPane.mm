@interface CSDefaultCalendarPane
- (CSDefaultCalendarPane)initWithFrame:(CGRect)frame;
- (id)preferenceValue;
- (void)_updateCheckedCalendarForSource:(id)source;
- (void)setPreferenceSpecifier:(id)specifier;
@end

@implementation CSDefaultCalendarPane

- (CSDefaultCalendarPane)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CSDefaultCalendarPane;
  v3 = [(CSDefaultCalendarPane *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(EKEventStore);
    store = v3->_store;
    v3->_store = v4;
  }

  return v3;
}

- (void)_updateCheckedCalendarForSource:(id)source
{
  v4 = [(EKEventStore *)self->_store defaultCalendarForNewEventsInDelegateSource:source];
  if (v4)
  {
    v5 = [NSSet setWithObject:v4];
    [(EKCalendarChooser *)self->_chooser setSelectedCalendars:v5];
  }

  _objc_release_x1();
}

- (void)setPreferenceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = CSDefaultCalendarPane;
  [(CSDefaultCalendarPane *)&v20 setPreferenceSpecifier:specifierCopy];
  if (specifierCopy)
  {
    v5 = [specifierCopy propertyForKey:@"CSSourceKey"];
    BYTE2(v19) = 0;
    LOWORD(v19) = 0;
    v6 = [[EKCalendarChooser alloc] initWithSelectionStyle:0 displayStyle:1 entityType:0 forEvent:0 eventStore:self->_store limitedToSource:v5 showIdentityChooser:v19 showDelegateSetupCell:? showAccountStatus:?];
    chooser = self->_chooser;
    self->_chooser = v6;

    [(CSDefaultCalendarPane *)self frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view = [(EKCalendarChooser *)self->_chooser view];
    [view setFrame:{v9, v11, v13, v15}];

    [(EKCalendarChooser *)self->_chooser setDisableCalendarEditing:1];
    if (v5)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [(EKCalendarChooser *)self->_chooser setExplanatoryTextMode:v17];
    view2 = [(EKCalendarChooser *)self->_chooser view];
    [(CSDefaultCalendarPane *)self addSubview:view2];

    [(CSDefaultCalendarPane *)self _updateCheckedCalendarForSource:v5];
  }
}

- (id)preferenceValue
{
  selectedCalendars = [(EKCalendarChooser *)self->_chooser selectedCalendars];
  anyObject = [selectedCalendars anyObject];

  if (self->_dontSetDefaultCalendar)
  {
    objectID = 0;
  }

  else
  {
    objectID = [anyObject objectID];
  }

  return objectID;
}

@end
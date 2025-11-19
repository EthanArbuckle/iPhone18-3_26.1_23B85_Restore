@interface CSDefaultCalendarPane
- (CSDefaultCalendarPane)initWithFrame:(CGRect)a3;
- (id)preferenceValue;
- (void)_updateCheckedCalendarForSource:(id)a3;
- (void)setPreferenceSpecifier:(id)a3;
@end

@implementation CSDefaultCalendarPane

- (CSDefaultCalendarPane)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CSDefaultCalendarPane;
  v3 = [(CSDefaultCalendarPane *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(EKEventStore);
    store = v3->_store;
    v3->_store = v4;
  }

  return v3;
}

- (void)_updateCheckedCalendarForSource:(id)a3
{
  v4 = [(EKEventStore *)self->_store defaultCalendarForNewEventsInDelegateSource:a3];
  if (v4)
  {
    v5 = [NSSet setWithObject:v4];
    [(EKCalendarChooser *)self->_chooser setSelectedCalendars:v5];
  }

  _objc_release_x1();
}

- (void)setPreferenceSpecifier:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CSDefaultCalendarPane;
  [(CSDefaultCalendarPane *)&v20 setPreferenceSpecifier:v4];
  if (v4)
  {
    v5 = [v4 propertyForKey:@"CSSourceKey"];
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
    v16 = [(EKCalendarChooser *)self->_chooser view];
    [v16 setFrame:{v9, v11, v13, v15}];

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
    v18 = [(EKCalendarChooser *)self->_chooser view];
    [(CSDefaultCalendarPane *)self addSubview:v18];

    [(CSDefaultCalendarPane *)self _updateCheckedCalendarForSource:v5];
  }
}

- (id)preferenceValue
{
  v3 = [(EKCalendarChooser *)self->_chooser selectedCalendars];
  v4 = [v3 anyObject];

  if (self->_dontSetDefaultCalendar)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectID];
  }

  return v5;
}

@end
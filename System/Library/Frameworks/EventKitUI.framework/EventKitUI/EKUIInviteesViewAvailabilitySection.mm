@interface EKUIInviteesViewAvailabilitySection
- (BOOL)sectionShouldBeShown;
- (id)cellForIndexPath:(id)path inTableView:(id)view;
- (id)debugTitle;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)view;
- (void)selectRow:(id)row;
@end

@implementation EKUIInviteesViewAvailabilitySection

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)sectionShouldBeShown
{
  v3 = MEMORY[0x1E6966988];
  event = [(EKUIInviteesViewAvailabilitySection *)self event];
  v5 = [v3 availabilityPanelVisibilityForEvent:event];

  if ([(EKUIInviteesViewAvailabilitySection *)self isForAttendeeProposedTime])
  {
    allowsAttendeesModifications = 1;
  }

  else
  {
    event2 = [(EKUIInviteesViewAvailabilitySection *)self event];
    allowsAttendeesModifications = [event2 allowsAttendeesModifications];
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return allowsAttendeesModifications;
  }
}

- (id)cellForIndexPath:(id)path inTableView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  cachedAvailabilityCellReuseIdentifier = [(EKUIInviteesViewAvailabilitySection *)self cachedAvailabilityCellReuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:cachedAvailabilityCellReuseIdentifier forIndexPath:pathCopy];

  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    [v9 setBackgroundColor:backgroundColor];
  }

  return v9;
}

- (void)selectRow:(id)row
{
  viewAvailabilityTapped = [(EKUIInviteesViewAvailabilitySection *)self viewAvailabilityTapped];
  viewAvailabilityTapped[2]();
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)view
{
  v4 = MEMORY[0x1E696AEC0];
  viewCopy = view;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAvailabilitySection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v10 = [v6 initWithFormat:@"%@-%@", v8, v9];
  [(EKUIInviteesViewAvailabilitySection *)self setCachedAvailabilityCellReuseIdentifier:v10];

  v11 = objc_opt_class();
  cachedAvailabilityCellReuseIdentifier = [(EKUIInviteesViewAvailabilitySection *)self cachedAvailabilityCellReuseIdentifier];
  [viewCopy registerClass:v11 forCellReuseIdentifier:cachedAvailabilityCellReuseIdentifier];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAvailabilitySection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v17 = [v13 initWithFormat:@"%@-%@", v15, v16];
  [(EKUIInviteesViewAvailabilitySection *)self setCachedConflictCellReuseIdentifier:v17];

  v18 = objc_opt_class();
  cachedConflictCellReuseIdentifier = [(EKUIInviteesViewAvailabilitySection *)self cachedConflictCellReuseIdentifier];
  [viewCopy registerClass:v18 forCellReuseIdentifier:cachedConflictCellReuseIdentifier];

  v20 = [(EKUIInviteesViewAvailabilitySection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewAvailabilitySection *)self setReuseIdentifierVersion:v20];
}

@end
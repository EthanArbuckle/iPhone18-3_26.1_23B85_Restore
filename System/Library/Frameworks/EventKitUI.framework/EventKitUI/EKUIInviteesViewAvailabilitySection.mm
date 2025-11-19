@interface EKUIInviteesViewAvailabilitySection
- (BOOL)sectionShouldBeShown;
- (id)cellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)debugTitle;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3;
- (void)selectRow:(id)a3;
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
  v4 = [(EKUIInviteesViewAvailabilitySection *)self event];
  v5 = [v3 availabilityPanelVisibilityForEvent:v4];

  if ([(EKUIInviteesViewAvailabilitySection *)self isForAttendeeProposedTime])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(EKUIInviteesViewAvailabilitySection *)self event];
    v6 = [v7 allowsAttendeesModifications];
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (id)cellForIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewAvailabilitySection *)self cachedAvailabilityCellReuseIdentifier];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8 forIndexPath:v7];

  if (EKUICatalyst())
  {
    v10 = [v6 backgroundColor];
    [v9 setBackgroundColor:v10];
  }

  return v9;
}

- (void)selectRow:(id)a3
{
  v3 = [(EKUIInviteesViewAvailabilitySection *)self viewAvailabilityTapped];
  v3[2]();
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAvailabilitySection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v10 = [v6 initWithFormat:@"%@-%@", v8, v9];
  [(EKUIInviteesViewAvailabilitySection *)self setCachedAvailabilityCellReuseIdentifier:v10];

  v11 = objc_opt_class();
  v12 = [(EKUIInviteesViewAvailabilitySection *)self cachedAvailabilityCellReuseIdentifier];
  [v5 registerClass:v11 forCellReuseIdentifier:v12];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAvailabilitySection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v17 = [v13 initWithFormat:@"%@-%@", v15, v16];
  [(EKUIInviteesViewAvailabilitySection *)self setCachedConflictCellReuseIdentifier:v17];

  v18 = objc_opt_class();
  v19 = [(EKUIInviteesViewAvailabilitySection *)self cachedConflictCellReuseIdentifier];
  [v5 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = [(EKUIInviteesViewAvailabilitySection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewAvailabilitySection *)self setReuseIdentifierVersion:v20];
}

@end
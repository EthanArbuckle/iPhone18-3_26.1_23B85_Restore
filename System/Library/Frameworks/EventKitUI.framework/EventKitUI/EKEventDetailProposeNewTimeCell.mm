@interface EKEventDetailProposeNewTimeCell
- (BOOL)update;
- (EKEventDetailProposeNewTimeCell)initWithEvent:(id)event editable:(BOOL)editable;
@end

@implementation EKEventDetailProposeNewTimeCell

- (EKEventDetailProposeNewTimeCell)initWithEvent:(id)event editable:(BOOL)editable
{
  v5.receiver = self;
  v5.super_class = EKEventDetailProposeNewTimeCell;
  return [(EKEventDetailCell *)&v5 initWithEvent:event editable:editable style:1];
}

- (BOOL)update
{
  v34[1] = *MEMORY[0x1E69E9840];
  shouldDisplayForEvent = [(EKEventDetailProposeNewTimeCell *)self shouldDisplayForEvent];
  if (!shouldDisplayForEvent)
  {
    return shouldDisplayForEvent;
  }

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  proposedStartDate = [(EKEvent *)self->super._event proposedStartDate];

  if (!proposedStartDate)
  {
    v8 = EventKitUIBundle();
    v9 = v8;
    v11 = @"Propose New Time";
LABEL_7:
    v10 = [v8 localizedStringForKey:v11 value:&stru_1F4EF6790 table:0];
    goto LABEL_8;
  }

  selfAttendee = [(EKEvent *)self->super._event selfAttendee];
  proposedStartDateStatus = [selfAttendee proposedStartDateStatus];

  v8 = EventKitUIBundle();
  v9 = v8;
  if (proposedStartDateStatus != 3)
  {
    v11 = @"Proposed Time";
    goto LABEL_7;
  }

  v10 = [v8 localizedStringForKey:@"Proposed Time Declined" value:&stru_1F4EF6790 table:0];

  [MEMORY[0x1E69DC888] systemRedColor];
  labelColor = v9 = labelColor;
LABEL_8:

  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v13 = *MEMORY[0x1E69DB650];
  v33 = *MEMORY[0x1E69DB650];
  v34[0] = labelColor;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v15 = [v12 initWithString:v10 attributes:v14];

  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  [cellConfiguration setAttributedText:v15];
  proposedStartDate2 = [(EKEvent *)self->super._event proposedStartDate];
  if (proposedStartDate2)
  {
    v18 = EventKitUIBundle();
    [v18 localizedStringForKey:@"Date Time format" value:@"%@ table:{%@", 0}];
    v19 = v30 = labelColor;

    v20 = MEMORY[0x1E696AEC0];
    [proposedStartDate2 localizedRelativeDateStringShortened:1];
    v21 = v29 = v10;
    v22 = [proposedStartDate2 timeStringAlwaysIncludeMinutes:0];
    v23 = [v20 localizedStringWithFormat:v19, v21, v22];

    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v31 = v13;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v32 = secondaryLabelColor;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v27 = [v24 initWithString:v23 attributes:v26];

    v10 = v29;
    [cellConfiguration setSecondaryAttributedText:v27];

    labelColor = v30;
  }

  [(EKEventDetailProposeNewTimeCell *)self setContentConfiguration:cellConfiguration];
  [(EKEventDetailProposeNewTimeCell *)self setAccessoryType:1];

  return shouldDisplayForEvent;
}

@end
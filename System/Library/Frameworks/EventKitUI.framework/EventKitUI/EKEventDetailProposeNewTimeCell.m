@interface EKEventDetailProposeNewTimeCell
- (BOOL)update;
- (EKEventDetailProposeNewTimeCell)initWithEvent:(id)a3 editable:(BOOL)a4;
@end

@implementation EKEventDetailProposeNewTimeCell

- (EKEventDetailProposeNewTimeCell)initWithEvent:(id)a3 editable:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = EKEventDetailProposeNewTimeCell;
  return [(EKEventDetailCell *)&v5 initWithEvent:a3 editable:a4 style:1];
}

- (BOOL)update
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = [(EKEventDetailProposeNewTimeCell *)self shouldDisplayForEvent];
  if (!v3)
  {
    return v3;
  }

  v4 = [MEMORY[0x1E69DC888] labelColor];
  v5 = [(EKEvent *)self->super._event proposedStartDate];

  if (!v5)
  {
    v8 = EventKitUIBundle();
    v9 = v8;
    v11 = @"Propose New Time";
LABEL_7:
    v10 = [v8 localizedStringForKey:v11 value:&stru_1F4EF6790 table:0];
    goto LABEL_8;
  }

  v6 = [(EKEvent *)self->super._event selfAttendee];
  v7 = [v6 proposedStartDateStatus];

  v8 = EventKitUIBundle();
  v9 = v8;
  if (v7 != 3)
  {
    v11 = @"Proposed Time";
    goto LABEL_7;
  }

  v10 = [v8 localizedStringForKey:@"Proposed Time Declined" value:&stru_1F4EF6790 table:0];

  [MEMORY[0x1E69DC888] systemRedColor];
  v4 = v9 = v4;
LABEL_8:

  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v13 = *MEMORY[0x1E69DB650];
  v33 = *MEMORY[0x1E69DB650];
  v34[0] = v4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v15 = [v12 initWithString:v10 attributes:v14];

  v16 = [MEMORY[0x1E69DCC28] cellConfiguration];
  [v16 setAttributedText:v15];
  v17 = [(EKEvent *)self->super._event proposedStartDate];
  if (v17)
  {
    v18 = EventKitUIBundle();
    [v18 localizedStringForKey:@"Date Time format" value:@"%@ table:{%@", 0}];
    v19 = v30 = v4;

    v20 = MEMORY[0x1E696AEC0];
    [v17 localizedRelativeDateStringShortened:1];
    v21 = v29 = v10;
    v22 = [v17 timeStringAlwaysIncludeMinutes:0];
    v23 = [v20 localizedStringWithFormat:v19, v21, v22];

    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v31 = v13;
    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v32 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v27 = [v24 initWithString:v23 attributes:v26];

    v10 = v29;
    [v16 setSecondaryAttributedText:v27];

    v4 = v30;
  }

  [(EKEventDetailProposeNewTimeCell *)self setContentConfiguration:v16];
  [(EKEventDetailProposeNewTimeCell *)self setAccessoryType:1];

  return v3;
}

@end
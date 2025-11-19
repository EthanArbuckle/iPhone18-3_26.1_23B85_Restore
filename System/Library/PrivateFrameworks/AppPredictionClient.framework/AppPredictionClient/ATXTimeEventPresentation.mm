@interface ATXTimeEventPresentation
- (ATXTimeEventPresentation)initWithCardIcon:(id)a3 fields:(id)a4 backgroundImageData:(id)a5 logoImageData:(id)a6 subtitleGlyph:(id)a7 allowsRescheduling:(BOOL)a8;
- (ATXTimeEventPresentation)initWithCardIcons:(id)a3 shouldOverlapIcons:(BOOL)a4 subtitleGlyph:(id)a5 hasCheckbox:(BOOL)a6 allowsRescheduling:(BOOL)a7;
- (ATXTimeEventPresentation)initWithCoder:(id)a3;
- (ATXTimeEventPresentation)initWithPinnedTimeEvent:(id)a3 subtitleGlyph:(id)a4 allowsRescheduling:(BOOL)a5;
- (ATXTimeEventPresentation)initWithRouteMapIcons:(id)a3 subtitleGlyph:(id)a4 allowsRescheduling:(BOOL)a5;
- (ATXTimeEventPresentation)initWithWidget:(id)a3 allowsRescheduling:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeEventPresentation

- (ATXTimeEventPresentation)initWithCardIcons:(id)a3 shouldOverlapIcons:(BOOL)a4 subtitleGlyph:(id)a5 hasCheckbox:(BOOL)a6 allowsRescheduling:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = ATXTimeEventPresentation;
  v14 = [(ATXTimeEventPresentation *)&v21 init];
  if (v14)
  {
    v15 = [v12 copy];
    icons = v14->_icons;
    v14->_icons = v15;

    v14->_overlapIcons = a4;
    v17 = [v13 copy];
    subtitleGlyph = v14->_subtitleGlyph;
    v14->_subtitleGlyph = v17;

    v14->_hasCheckbox = a6;
    fields = v14->_fields;
    v14->_fields = MEMORY[0x1E695E0F0];

    v14->_allowsRescheduling = a7;
  }

  return v14;
}

- (ATXTimeEventPresentation)initWithCardIcon:(id)a3 fields:(id)a4 backgroundImageData:(id)a5 logoImageData:(id)a6 subtitleGlyph:(id)a7 allowsRescheduling:(BOOL)a8
{
  v28[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27.receiver = self;
  v27.super_class = ATXTimeEventPresentation;
  v19 = [(ATXTimeEventPresentation *)&v27 init];
  if (v19)
  {
    v28[0] = v14;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    icons = v19->_icons;
    v19->_icons = v20;

    v22 = [v15 copy];
    fields = v19->_fields;
    v19->_fields = v22;

    objc_storeStrong(&v19->_backgroundImageData, a5);
    objc_storeStrong(&v19->_logoImageData, a6);
    v24 = [v18 copy];
    subtitleGlyph = v19->_subtitleGlyph;
    v19->_subtitleGlyph = v24;

    v19->_allowsRescheduling = a8;
  }

  return v19;
}

- (ATXTimeEventPresentation)initWithRouteMapIcons:(id)a3 subtitleGlyph:(id)a4 allowsRescheduling:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = ATXTimeEventPresentation;
  v10 = [(ATXTimeEventPresentation *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    icons = v10->_icons;
    v10->_icons = v11;

    v10->_supportsRouteMap = 1;
    v13 = [v9 copy];
    subtitleGlyph = v10->_subtitleGlyph;
    v10->_subtitleGlyph = v13;

    fields = v10->_fields;
    v10->_fields = MEMORY[0x1E695E0F0];

    v10->_allowsRescheduling = a5;
  }

  return v10;
}

- (ATXTimeEventPresentation)initWithPinnedTimeEvent:(id)a3 subtitleGlyph:(id)a4 allowsRescheduling:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = ATXTimeEventPresentation;
  v11 = [(ATXTimeEventPresentation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pinnedTimeEvent, a3);
    v13 = [v10 copy];
    subtitleGlyph = v12->_subtitleGlyph;
    v12->_subtitleGlyph = v13;

    fields = v12->_fields;
    v12->_fields = MEMORY[0x1E695E0F0];

    v12->_allowsRescheduling = a5;
  }

  return v12;
}

- (ATXTimeEventPresentation)initWithWidget:(id)a3 allowsRescheduling:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ATXTimeEventPresentation;
  v8 = [(ATXTimeEventPresentation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_widget, a3);
    fields = v9->_fields;
    v9->_fields = MEMORY[0x1E695E0F0];

    v9->_allowsRescheduling = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  widget = self->_widget;
  v5 = a3;
  [v5 encodeObject:widget forKey:@"widget"];
  [v5 encodeObject:self->_icons forKey:@"icons"];
  [v5 encodeBool:self->_supportsRouteMap forKey:@"routeMap"];
  [v5 encodeBool:self->_hasCheckbox forKey:@"hasCheckbox"];
  [v5 encodeBool:self->_overlapIcons forKey:@"overlapIcons"];
  [v5 encodeObject:self->_subtitleGlyph forKey:@"subtitleGlyph"];
  [v5 encodeObject:self->_pinnedTimeEvent forKey:@"pinnedTimeEvent"];
  [v5 encodeObject:self->_backgroundImageData forKey:@"backgroundImageData"];
  [v5 encodeObject:self->_logoImageData forKey:@"logoImageData"];
  [v5 encodeObject:self->_fields forKey:@"fields"];
  [v5 encodeBool:self->_allowsRescheduling forKey:@"allowsRescheduling"];
}

- (ATXTimeEventPresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ATXTimeEventPresentation;
  v5 = [(ATXTimeEventPresentation *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
    widget = v5->_widget;
    v5->_widget = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = objc_opt_self();
    v12 = [v9 initWithObjects:{v10, v11, 0}];

    objc_autoreleasePoolPop(v8);
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"icons"];
    icons = v5->_icons;
    v5->_icons = v13;

    v5->_supportsRouteMap = [v4 decodeBoolForKey:@"routeMap"];
    v5->_hasCheckbox = [v4 decodeBoolForKey:@"hasCheckbox"];
    v5->_overlapIcons = [v4 decodeBoolForKey:@"overlapIcons"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitleGlyph"];
    subtitleGlyph = v5->_subtitleGlyph;
    v5->_subtitleGlyph = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinnedTimeEvent"];
    pinnedTimeEvent = v5->_pinnedTimeEvent;
    v5->_pinnedTimeEvent = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundImageData"];
    backgroundImageData = v5->_backgroundImageData;
    v5->_backgroundImageData = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoImageData"];
    logoImageData = v5->_logoImageData;
    v5->_logoImageData = v21;

    v23 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"fields"];
    fields = v5->_fields;
    v5->_fields = v23;

    v5->_allowsRescheduling = [v4 decodeBoolForKey:@"allowsRescheduling"];
  }

  return v5;
}

@end
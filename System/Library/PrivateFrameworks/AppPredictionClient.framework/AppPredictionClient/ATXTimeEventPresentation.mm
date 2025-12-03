@interface ATXTimeEventPresentation
- (ATXTimeEventPresentation)initWithCardIcon:(id)icon fields:(id)fields backgroundImageData:(id)data logoImageData:(id)imageData subtitleGlyph:(id)glyph allowsRescheduling:(BOOL)rescheduling;
- (ATXTimeEventPresentation)initWithCardIcons:(id)icons shouldOverlapIcons:(BOOL)overlapIcons subtitleGlyph:(id)glyph hasCheckbox:(BOOL)checkbox allowsRescheduling:(BOOL)rescheduling;
- (ATXTimeEventPresentation)initWithCoder:(id)coder;
- (ATXTimeEventPresentation)initWithPinnedTimeEvent:(id)event subtitleGlyph:(id)glyph allowsRescheduling:(BOOL)rescheduling;
- (ATXTimeEventPresentation)initWithRouteMapIcons:(id)icons subtitleGlyph:(id)glyph allowsRescheduling:(BOOL)rescheduling;
- (ATXTimeEventPresentation)initWithWidget:(id)widget allowsRescheduling:(BOOL)rescheduling;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeEventPresentation

- (ATXTimeEventPresentation)initWithCardIcons:(id)icons shouldOverlapIcons:(BOOL)overlapIcons subtitleGlyph:(id)glyph hasCheckbox:(BOOL)checkbox allowsRescheduling:(BOOL)rescheduling
{
  iconsCopy = icons;
  glyphCopy = glyph;
  v21.receiver = self;
  v21.super_class = ATXTimeEventPresentation;
  v14 = [(ATXTimeEventPresentation *)&v21 init];
  if (v14)
  {
    v15 = [iconsCopy copy];
    icons = v14->_icons;
    v14->_icons = v15;

    v14->_overlapIcons = overlapIcons;
    v17 = [glyphCopy copy];
    subtitleGlyph = v14->_subtitleGlyph;
    v14->_subtitleGlyph = v17;

    v14->_hasCheckbox = checkbox;
    fields = v14->_fields;
    v14->_fields = MEMORY[0x1E695E0F0];

    v14->_allowsRescheduling = rescheduling;
  }

  return v14;
}

- (ATXTimeEventPresentation)initWithCardIcon:(id)icon fields:(id)fields backgroundImageData:(id)data logoImageData:(id)imageData subtitleGlyph:(id)glyph allowsRescheduling:(BOOL)rescheduling
{
  v28[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  fieldsCopy = fields;
  dataCopy = data;
  imageDataCopy = imageData;
  glyphCopy = glyph;
  v27.receiver = self;
  v27.super_class = ATXTimeEventPresentation;
  v19 = [(ATXTimeEventPresentation *)&v27 init];
  if (v19)
  {
    v28[0] = iconCopy;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    icons = v19->_icons;
    v19->_icons = v20;

    v22 = [fieldsCopy copy];
    fields = v19->_fields;
    v19->_fields = v22;

    objc_storeStrong(&v19->_backgroundImageData, data);
    objc_storeStrong(&v19->_logoImageData, imageData);
    v24 = [glyphCopy copy];
    subtitleGlyph = v19->_subtitleGlyph;
    v19->_subtitleGlyph = v24;

    v19->_allowsRescheduling = rescheduling;
  }

  return v19;
}

- (ATXTimeEventPresentation)initWithRouteMapIcons:(id)icons subtitleGlyph:(id)glyph allowsRescheduling:(BOOL)rescheduling
{
  iconsCopy = icons;
  glyphCopy = glyph;
  v17.receiver = self;
  v17.super_class = ATXTimeEventPresentation;
  v10 = [(ATXTimeEventPresentation *)&v17 init];
  if (v10)
  {
    v11 = [iconsCopy copy];
    icons = v10->_icons;
    v10->_icons = v11;

    v10->_supportsRouteMap = 1;
    v13 = [glyphCopy copy];
    subtitleGlyph = v10->_subtitleGlyph;
    v10->_subtitleGlyph = v13;

    fields = v10->_fields;
    v10->_fields = MEMORY[0x1E695E0F0];

    v10->_allowsRescheduling = rescheduling;
  }

  return v10;
}

- (ATXTimeEventPresentation)initWithPinnedTimeEvent:(id)event subtitleGlyph:(id)glyph allowsRescheduling:(BOOL)rescheduling
{
  eventCopy = event;
  glyphCopy = glyph;
  v17.receiver = self;
  v17.super_class = ATXTimeEventPresentation;
  v11 = [(ATXTimeEventPresentation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pinnedTimeEvent, event);
    v13 = [glyphCopy copy];
    subtitleGlyph = v12->_subtitleGlyph;
    v12->_subtitleGlyph = v13;

    fields = v12->_fields;
    v12->_fields = MEMORY[0x1E695E0F0];

    v12->_allowsRescheduling = rescheduling;
  }

  return v12;
}

- (ATXTimeEventPresentation)initWithWidget:(id)widget allowsRescheduling:(BOOL)rescheduling
{
  widgetCopy = widget;
  v12.receiver = self;
  v12.super_class = ATXTimeEventPresentation;
  v8 = [(ATXTimeEventPresentation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_widget, widget);
    fields = v9->_fields;
    v9->_fields = MEMORY[0x1E695E0F0];

    v9->_allowsRescheduling = rescheduling;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  widget = self->_widget;
  coderCopy = coder;
  [coderCopy encodeObject:widget forKey:@"widget"];
  [coderCopy encodeObject:self->_icons forKey:@"icons"];
  [coderCopy encodeBool:self->_supportsRouteMap forKey:@"routeMap"];
  [coderCopy encodeBool:self->_hasCheckbox forKey:@"hasCheckbox"];
  [coderCopy encodeBool:self->_overlapIcons forKey:@"overlapIcons"];
  [coderCopy encodeObject:self->_subtitleGlyph forKey:@"subtitleGlyph"];
  [coderCopy encodeObject:self->_pinnedTimeEvent forKey:@"pinnedTimeEvent"];
  [coderCopy encodeObject:self->_backgroundImageData forKey:@"backgroundImageData"];
  [coderCopy encodeObject:self->_logoImageData forKey:@"logoImageData"];
  [coderCopy encodeObject:self->_fields forKey:@"fields"];
  [coderCopy encodeBool:self->_allowsRescheduling forKey:@"allowsRescheduling"];
}

- (ATXTimeEventPresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = ATXTimeEventPresentation;
  v5 = [(ATXTimeEventPresentation *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
    widget = v5->_widget;
    v5->_widget = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = objc_opt_self();
    v12 = [v9 initWithObjects:{v10, v11, 0}];

    objc_autoreleasePoolPop(v8);
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"icons"];
    icons = v5->_icons;
    v5->_icons = v13;

    v5->_supportsRouteMap = [coderCopy decodeBoolForKey:@"routeMap"];
    v5->_hasCheckbox = [coderCopy decodeBoolForKey:@"hasCheckbox"];
    v5->_overlapIcons = [coderCopy decodeBoolForKey:@"overlapIcons"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitleGlyph"];
    subtitleGlyph = v5->_subtitleGlyph;
    v5->_subtitleGlyph = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinnedTimeEvent"];
    pinnedTimeEvent = v5->_pinnedTimeEvent;
    v5->_pinnedTimeEvent = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundImageData"];
    backgroundImageData = v5->_backgroundImageData;
    v5->_backgroundImageData = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoImageData"];
    logoImageData = v5->_logoImageData;
    v5->_logoImageData = v21;

    v23 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"fields"];
    fields = v5->_fields;
    v5->_fields = v23;

    v5->_allowsRescheduling = [coderCopy decodeBoolForKey:@"allowsRescheduling"];
  }

  return v5;
}

@end
@interface CLKComplicationPreviewTimelineEntry
- (CLKComplicationPreviewTimelineEntry)init;
- (CLKComplicationPreviewTimelineEntry)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)finalize;
@end

@implementation CLKComplicationPreviewTimelineEntry

- (CLKComplicationPreviewTimelineEntry)init
{
  v6.receiver = self;
  v6.super_class = CLKComplicationPreviewTimelineEntry;
  v2 = [(CLKComplicationPreviewTimelineEntry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(CLKComplicationPreviewTimelineEntry *)v2 setErrors:v3];

    v4 = objc_opt_new();
    [(CLKComplicationPreviewTimelineEntry *)v2 setSelectableRegions:v4];
  }

  return v2;
}

- (void)finalize
{
  v4.receiver = self;
  v4.super_class = CLKComplicationPreviewTimelineEntry;
  [(CLKComplicationTimelineEntry *)&v4 finalize];
  complicationTemplate = [(CLKComplicationTimelineEntry *)self complicationTemplate];
  [complicationTemplate setRenderForPreviews:1];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKComplicationPreviewTimelineEntry;
  coderCopy = coder;
  [(CLKComplicationTimelineEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_previewFaceColor forKey:{@"previewFaceColor", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_errors forKey:@"errors"];
  [coderCopy encodeObject:self->_selectableRegions forKey:@"selectableRegions"];
}

- (CLKComplicationPreviewTimelineEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLKComplicationPreviewTimelineEntry;
  v5 = [(CLKComplicationTimelineEntry *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_previewFaceColor = [coderCopy decodeIntegerForKey:@"previewFaceColor"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectableRegions"];
    selectableRegions = v5->_selectableRegions;
    v5->_selectableRegions = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CLKComplicationPreviewTimelineEntry;
  v4 = [(CLKComplicationTimelineEntry *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ preview face color = %ld", v4, self->_previewFaceColor];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(CLKComplicationTimelineEntry *)self finalized])
  {

    return self;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CLKComplicationPreviewTimelineEntry;
    v5 = [(CLKComplicationTimelineEntry *)&v7 copyWithZone:zone];
    [v5 setPreviewFaceColor:self->_previewFaceColor];
    [v5 setErrors:self->_errors];
    [v5 setSelectableRegions:self->_selectableRegions];
    return v5;
  }
}

@end
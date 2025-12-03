@interface PHSearchQueryGroundingPersonalEvent
- (PHSearchQueryGroundingPersonalEvent)initWithCoder:(id)coder;
- (PHSearchQueryGroundingPersonalEvent)initWithMeaningLabel:(id)label momentUUIDs:(id)ds;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHSearchQueryGroundingPersonalEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  meaningLabel = [(PHSearchQueryGroundingPersonalEvent *)self meaningLabel];
  momentUUIDs = [(PHSearchQueryGroundingPersonalEvent *)self momentUUIDs];
  v6 = [v3 stringWithFormat:@"(meaningLabel:%@, momentUUIDs:%@)", meaningLabel, momentUUIDs];

  return v6;
}

- (PHSearchQueryGroundingPersonalEvent)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryGroundingPersonalEventMeaningLabelPropertyText"];
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"PHSearchQueryGroundingPersonalEventMomentUUIDsPropertyText"];

  v10 = [(PHSearchQueryGroundingPersonalEvent *)self initWithMeaningLabel:v5 momentUUIDs:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  meaningLabel = self->_meaningLabel;
  coderCopy = coder;
  [coderCopy encodeObject:meaningLabel forKey:@"PHSearchQueryGroundingPersonalEventMeaningLabelPropertyText"];
  [coderCopy encodeObject:self->_momentUUIDs forKey:@"PHSearchQueryGroundingPersonalEventMomentUUIDsPropertyText"];
}

- (PHSearchQueryGroundingPersonalEvent)initWithMeaningLabel:(id)label momentUUIDs:(id)ds
{
  labelCopy = label;
  dsCopy = ds;
  v12.receiver = self;
  v12.super_class = PHSearchQueryGroundingPersonalEvent;
  v9 = [(PHSearchQueryGroundingPersonalEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_meaningLabel, label);
    objc_storeStrong(&v10->_momentUUIDs, ds);
  }

  return v10;
}

@end
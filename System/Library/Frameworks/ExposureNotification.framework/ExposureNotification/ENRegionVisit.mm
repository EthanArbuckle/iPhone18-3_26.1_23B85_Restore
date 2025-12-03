@interface ENRegionVisit
- (BOOL)isEqual:(id)equal;
- (ENRegionVisit)initWithCoder:(id)coder;
- (ENRegionVisit)initWithRegion:(id)region date:(id)date;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegionVisit

- (ENRegionVisit)initWithRegion:(id)region date:(id)date
{
  regionCopy = region;
  dateCopy = date;
  v9 = dateCopy;
  if (regionCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ENRegionVisit initWithRegion:a2 date:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [ENRegionVisit initWithRegion:a2 date:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = ENRegionVisit;
  v10 = [(ENRegionVisit *)&v16 init];
  if (v10)
  {
    v11 = [regionCopy copy];
    region = v10->_region;
    v10->_region = v11;

    v13 = [v9 copy];
    date = v10->_date;
    v10->_date = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  region = self->_region;
  coderCopy = coder;
  [coderCopy encodeObject:region forKey:@"reg"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  countryCode = [(ENRegion *)self->_region countryCode];
  subdivisionCode = [(ENRegion *)self->_region subdivisionCode];
  v6 = [v3 stringWithFormat:@"countryCode, %@, subdivisionCode, %@, date, %@", countryCode, subdivisionCode, self->_date];

  return v6;
}

- (ENRegionVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    if (v6)
    {
      self = [(ENRegionVisit *)self initWithRegion:v5 date:v6];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v5 = equalCopy;
  v6 = v5[1];
  v7 = self->_region;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_11;
  }

  v10 = [(ENRegion *)v7 isEqual:v8];

  if (v10)
  {
LABEL_7:
    date = self->_date;
    v13 = v5[2];
    v7 = date;
    v14 = v13;
    v9 = v14;
    if (v7 == v14)
    {
      v11 = 1;
      goto LABEL_12;
    }

    if ((v7 != 0) != (v14 == 0))
    {
      v11 = [(ENRegion *)v7 isEqual:v14];
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

LABEL_14:
  return v11;
}

- (void)initWithRegion:(uint64_t)a1 date:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENRegionVisit.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"region"}];
}

- (void)initWithRegion:(uint64_t)a1 date:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENRegionVisit.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"date"}];
}

@end
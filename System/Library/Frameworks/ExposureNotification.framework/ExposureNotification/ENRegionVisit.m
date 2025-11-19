@interface ENRegionVisit
- (BOOL)isEqual:(id)a3;
- (ENRegionVisit)initWithCoder:(id)a3;
- (ENRegionVisit)initWithRegion:(id)a3 date:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionVisit

- (ENRegionVisit)initWithRegion:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
    v11 = [v7 copy];
    region = v10->_region;
    v10->_region = v11;

    v13 = [v9 copy];
    date = v10->_date;
    v10->_date = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  region = self->_region;
  v5 = a3;
  [v5 encodeObject:region forKey:@"reg"];
  [v5 encodeObject:self->_date forKey:@"date"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ENRegion *)self->_region countryCode];
  v5 = [(ENRegion *)self->_region subdivisionCode];
  v6 = [v3 stringWithFormat:@"countryCode, %@, subdivisionCode, %@, date, %@", v4, v5, self->_date];

  return v6;
}

- (ENRegionVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    if (v6)
    {
      self = [(ENRegionVisit *)self initWithRegion:v5 date:v6];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v5 = v4;
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
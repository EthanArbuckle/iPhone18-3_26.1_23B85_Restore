@interface HKQuantityDatum
- (BOOL)isEqual:(id)a3;
- (HKQuantityDatum)init;
- (HKQuantityDatum)initWithCoder:(id)a3;
- (HKQuantityDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 quantity:(id)a5 resumeContext:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQuantityDatum

- (HKQuantityDatum)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKQuantityDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 quantity:(id)a5 resumeContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKQuantityDatum;
  v14 = [(HKQuantityDatum *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v17 = [v11 copy];
    dateInterval = v14->_dateInterval;
    v14->_dateInterval = v17;

    v19 = [v12 copy];
    quantity = v14->_quantity;
    v14->_quantity = v19;

    v21 = [v13 copy];
    resumeContext = v14->_resumeContext;
    v14->_resumeContext = v21;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"hkqd_id"];
  [v5 encodeObject:self->_dateInterval forKey:@"hkqd_dt"];
  [v5 encodeObject:self->_quantity forKey:@"hkqd_qt"];
  [v5 encodeObject:self->_resumeContext forKey:@"hkqd_cxt"];
}

- (HKQuantityDatum)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_id"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_dt"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_qt"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_cxt"];

  v9 = [(HKQuantityDatum *)self initWithIdentifier:v5 dateInterval:v6 quantity:v7 resumeContext:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSUUID *)self->_UUID isEqual:v4[1]]|| ![(NSDateInterval *)self->_dateInterval isEqual:v4[3]]|| ![(HKQuantity *)self->_quantity isEqual:v4[2]])
  {
    goto LABEL_8;
  }

  resumeContext = self->_resumeContext;
  v6 = v4[4];
  if (resumeContext == v6)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if (v6)
  {
    v7 = [(NSData *)resumeContext isEqual:?];
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(NSDateInterval *)self->_dateInterval hash]^ v3;
  v5 = [(HKQuantity *)self->_quantity hash];
  return v4 ^ v5 ^ [(NSData *)self->_resumeContext hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKQuantityDatum *)self UUID];
  v5 = [(HKQuantityDatum *)self dateInterval];
  v6 = [(HKQuantityDatum *)self quantity];
  v7 = [v3 stringWithFormat:@"<%@: %@, quantity: %@>", v4, v5, v6];

  return v7;
}

@end
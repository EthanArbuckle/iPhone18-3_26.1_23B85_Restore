@interface HKQuantityDatum
- (BOOL)isEqual:(id)equal;
- (HKQuantityDatum)init;
- (HKQuantityDatum)initWithCoder:(id)coder;
- (HKQuantityDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval quantity:(id)quantity resumeContext:(id)context;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKQuantityDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval quantity:(id)quantity resumeContext:(id)context
{
  identifierCopy = identifier;
  intervalCopy = interval;
  quantityCopy = quantity;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = HKQuantityDatum;
  v14 = [(HKQuantityDatum *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v17 = [intervalCopy copy];
    dateInterval = v14->_dateInterval;
    v14->_dateInterval = v17;

    v19 = [quantityCopy copy];
    quantity = v14->_quantity;
    v14->_quantity = v19;

    v21 = [contextCopy copy];
    resumeContext = v14->_resumeContext;
    v14->_resumeContext = v21;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"hkqd_id"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"hkqd_dt"];
  [coderCopy encodeObject:self->_quantity forKey:@"hkqd_qt"];
  [coderCopy encodeObject:self->_resumeContext forKey:@"hkqd_cxt"];
}

- (HKQuantityDatum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_id"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_dt"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_qt"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hkqd_cxt"];

  v9 = [(HKQuantityDatum *)self initWithIdentifier:v5 dateInterval:v6 quantity:v7 resumeContext:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSUUID *)self->_UUID isEqual:equalCopy[1]]|| ![(NSDateInterval *)self->_dateInterval isEqual:equalCopy[3]]|| ![(HKQuantity *)self->_quantity isEqual:equalCopy[2]])
  {
    goto LABEL_8;
  }

  resumeContext = self->_resumeContext;
  v6 = equalCopy[4];
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
  uUID = [(HKQuantityDatum *)self UUID];
  dateInterval = [(HKQuantityDatum *)self dateInterval];
  quantity = [(HKQuantityDatum *)self quantity];
  v7 = [v3 stringWithFormat:@"<%@: %@, quantity: %@>", uUID, dateInterval, quantity];

  return v7;
}

@end
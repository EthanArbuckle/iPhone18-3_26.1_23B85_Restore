@interface GCHapticMotor
- (GCHapticMotor)initWithCoder:(id)coder;
- (GCHapticMotor)initWithIndex:(int)index name:(id)name features:(unint64_t)features frequency:(float)frequency amplitude:(float)amplitude;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyValuesFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)enqueueHapticTransientEvent:(id)event;
@end

@implementation GCHapticMotor

- (GCHapticMotor)initWithIndex:(int)index name:(id)name features:(unint64_t)features frequency:(float)frequency amplitude:(float)amplitude
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = GCHapticMotor;
  v14 = [(GCHapticMotor *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_index = index;
    objc_storeStrong(&v14->_name, name);
    v15->_features = features;
    v15->_frequency = frequency;
    v15->_amplitude = amplitude;
    array = [MEMORY[0x1E695DF70] array];
    queuedTransients = v15->_queuedTransients;
    v15->_queuedTransients = array;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  index = self->_index;
  coderCopy = coder;
  [coderCopy encodeInteger:index forKey:@"_index"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeInteger:self->_features forKey:@"_features"];
  *&v5 = self->_frequency;
  [coderCopy encodeFloat:@"_frequency" forKey:v5];
  *&v6 = self->_amplitude;
  [coderCopy encodeFloat:@"_amplitude" forKey:v6];
}

- (GCHapticMotor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"_index"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
  v7 = [coderCopy decodeIntegerForKey:@"_features"];
  [coderCopy decodeFloatForKey:@"_frequency"];
  v9 = v8;
  [coderCopy decodeFloatForKey:@"_amplitude"];
  v11 = v10;

  LODWORD(v12) = v9;
  LODWORD(v13) = v11;
  v14 = [(GCHapticMotor *)self initWithIndex:v5 name:v6 features:v7 frequency:v12 amplitude:v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    name = [(GCHapticMotor *)self name];
    v7 = [name copyWithZone:zone];
    v8 = *(v5 + 24);
    *(v5 + 24) = v7;

    *(v5 + 8) = [(GCHapticMotor *)self index];
    *(v5 + 32) = [(GCHapticMotor *)self features];
    [(GCHapticMotor *)self frequency];
    *(v5 + 12) = v9;
    [(GCHapticMotor *)self amplitude];
    *(v5 + 16) = v10;
  }

  return v5;
}

- (void)applyValuesFrom:(id)from
{
  fromCopy = from;
  [fromCopy frequency];
  [(GCHapticMotor *)self setFrequency:?];
  if (([(GCHapticMotor *)self features]& 1) != 0)
  {
    [fromCopy amplitude];
    [(GCHapticMotor *)self setAmplitude:?];
  }
}

- (void)enqueueHapticTransientEvent:(id)event
{
  eventCopy = event;
  if ((-[GCHapticMotor features](self, "features") & 2) != 0 && [eventCopy type] == 1)
  {
    [(NSMutableArray *)self->_queuedTransients addObject:eventCopy];
  }
}

@end
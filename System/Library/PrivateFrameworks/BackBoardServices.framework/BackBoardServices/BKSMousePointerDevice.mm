@interface BKSMousePointerDevice
+ (id)protobufSchema;
- (BKSMousePointerDevice)init;
- (BKSMousePointerDevice)initWithCoder:(id)coder;
- (BKSMousePointerDevice)initWithSenderDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initForProtobufDecoding;
- (id)preferences;
- (void)encodeWithCoder:(id)coder;
- (void)setPreferences:(id)preferences;
@end

@implementation BKSMousePointerDevice

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = BKSMousePointerDevice;
  v4 = [(BKSMousePointerDevice *)&v7 description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@" %@ -- product:%@ manufacturer:%@ pref:%@ virtalButtons:%d supportsDragLock:%d", self->_senderDescriptor, self->_productName, self->_manufacturerName, self->_preferenceKey, self->_hasVirtualMouseButtons, self->_supportsDragLock];
  [v5 appendFormat:@" supportsLightClick:%d supportsSystemHaptics:%d", self->_supportsLightClick, self->_supportsSystemHaptics];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(BKSHIDEventSenderDescriptor *)self->_senderDescriptor isEqual:equalCopy->_senderDescriptor]&& [(NSString *)self->_preferenceKey isEqual:equalCopy->_preferenceKey]&& [(NSString *)self->_productName isEqual:equalCopy->_productName]&& [(NSString *)self->_manufacturerName isEqual:equalCopy->_manufacturerName]&& self->_hasVirtualMouseButtons == equalCopy->_hasVirtualMouseButtons && self->_supportsDragLock == equalCopy->_supportsDragLock && self->_supportsLightClick == equalCopy->_supportsLightClick && self->_supportsSystemHaptics == equalCopy->_supportsSystemHaptics;
  }

  return v6;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSMousePointerDevice;
  return [(BKSMousePointerDevice *)&v3 init];
}

- (BKSMousePointerDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t:1"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t:2"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t:3"];
  productName = self->_productName;
  self->_productName = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t:4"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v9;

  self->_hasVirtualMouseButtons = [coderCopy decodeBoolForKey:@"t:5"];
  self->_supportsDragLock = [coderCopy decodeBoolForKey:@"t:6"];
  self->_supportsLightClick = [coderCopy decodeBoolForKey:@"t:7"];
  v11 = [coderCopy decodeBoolForKey:@"t:8"];

  self->_supportsSystemHaptics = v11;
  v12 = [(BKSMousePointerDevice *)self initWithSenderDescriptor:v5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferenceKey, v6);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  senderDescriptor = self->_senderDescriptor;
  coderCopy = coder;
  [coderCopy encodeObject:senderDescriptor forKey:@"t:1"];
  [coderCopy encodeObject:self->_preferenceKey forKey:@"t:2"];
  [coderCopy encodeObject:self->_productName forKey:@"t:3"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"t:4"];
  [coderCopy encodeBool:self->_hasVirtualMouseButtons forKey:@"t:5"];
  [coderCopy encodeBool:self->_supportsDragLock forKey:@"t:6"];
  [coderCopy encodeBool:self->_supportsLightClick forKey:@"t:7"];
  [coderCopy encodeBool:self->_supportsSystemHaptics forKey:@"t:8"];
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = +[BKSMousePointerService sharedInstance];
  [v5 setPreferences:preferencesCopy forDevice:self];
}

- (id)preferences
{
  v3 = +[BKSMousePointerService sharedInstance];
  v4 = [v3 preferencesForDevice:self];

  return v4;
}

- (BKSMousePointerDevice)initWithSenderDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = objc_opt_class();
  if (([v6 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSMousePointerDevice.m" lineNumber:27 description:@"subclassing BKSMousePointerDevice is not supported"];
  }

  v12.receiver = self;
  v12.super_class = BKSMousePointerDevice;
  v7 = [(BKSMousePointerDevice *)&v12 init];
  if (v7)
  {
    v8 = [descriptorCopy copy];
    senderDescriptor = v7->_senderDescriptor;
    v7->_senderDescriptor = v8;
  }

  return v7;
}

- (BKSMousePointerDevice)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BKSMousePointerDevice.m" lineNumber:22 description:{@"-init is not allowed on %@", objc_opt_class()}];

  return 0;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BKSMousePointerDevice_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_4075 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_4075, block);
  }

  v2 = protobufSchema_schema_4076;

  return v2;
}

uint64_t __39__BKSMousePointerDevice_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_4076 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_4078];

  return MEMORY[0x1EEE66BB8]();
}

void __39__BKSMousePointerDevice_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_senderDescriptor"];
  [v2 addField:"_preferenceKey"];
  [v2 addField:"_productName"];
  [v2 addField:"_manufacturerName"];
  [v2 addField:"_hasVirtualMouseButtons"];
  [v2 addField:"_supportsDragLock"];
  [v2 addField:"_supportsLightClick"];
  [v2 addField:"_supportsSystemHaptics"];
}

@end
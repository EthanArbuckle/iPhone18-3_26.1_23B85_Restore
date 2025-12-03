@interface ACICameraManager
+ (id)singleton;
- (ACICameraManager)initWithSourceType:(id)type;
- (id)createCameraStreamByKey:(id)key;
@end

@implementation ACICameraManager

+ (id)singleton
{
  if (+[ACICameraManager singleton]::onceToken != -1)
  {
    +[ACICameraManager singleton];
  }

  v3 = +[ACICameraManager singleton]::obj;

  return v3;
}

uint64_t __29__ACICameraManager_singleton__block_invoke()
{
  v0 = [ACICameraManager alloc];
  +[ACICameraManager singleton]::obj = [(ACICameraManager *)v0 initWithSourceType:_sourceType];

  return MEMORY[0x2821F96F8]();
}

- (ACICameraManager)initWithSourceType:(id)type
{
  typeCopy = type;
  if ([(ACICameraManager *)self init])
  {
    [typeCopy UTF8String];
    aci::ACIObjectSP<aci::camera::Manager,char const*,BOOL>();
  }

  return 0;
}

- (id)createCameraStreamByKey:(id)key
{
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];
  v7 = aci::String::stringWithCString(uTF8String, v6);
  v8 = v7;
  v11 = v7;
  if (v7)
  {
    aci::Object::retain(v7);
  }

  v9 = [[ACICameraProvider alloc] initWithStream:aci::Streamer::getStream((self->_cameraManager._ptr + 16), v8)];
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&v11);

  return v9;
}

@end
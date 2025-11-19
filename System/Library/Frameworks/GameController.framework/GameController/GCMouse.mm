@interface GCMouse
+ (GCMouse)current;
+ (NSArray)mice;
- (GCMouseLiveInput)liveInput;
- (NSString)debugDescription;
- (NSString)description;
- (int64_t)compareTo:(id)a3;
@end

@implementation GCMouse

+ (GCMouse)current
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  v3 = [v2 currentMouse];

  return v3;
}

+ (NSArray)mice
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  v3 = [v2 mice];
  v4 = [(GCDeviceCollection *)v3 orderedCollection];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (GCMouseLiveInput)liveInput
{
  v2 = [(GCMouse *)self mouseInput];
  v3 = [(GCMouseInput *)v2 liveInputFacade];

  return v3;
}

- (int64_t)compareTo:(id)a3
{
  v4 = a3;
  v5 = [(GCMouse *)self creationSequence];
  if (v5 >= [v4 creationSequence])
  {
    v7 = [(GCMouse *)self creationSequence];
    v6 = v7 > [v4 creationSequence];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCMouse *)self vendorName];
  v5 = [v3 stringWithFormat:@"<GCMouse %p '%@'>", self, v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

@end
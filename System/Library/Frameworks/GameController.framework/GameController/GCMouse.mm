@interface GCMouse
+ (GCMouse)current;
+ (NSArray)mice;
- (GCMouseLiveInput)liveInput;
- (NSString)debugDescription;
- (NSString)description;
- (int64_t)compareTo:(id)to;
@end

@implementation GCMouse

+ (GCMouse)current
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  currentMouse = [v2 currentMouse];

  return currentMouse;
}

+ (NSArray)mice
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  mice = [v2 mice];
  orderedCollection = [(GCDeviceCollection *)mice orderedCollection];
  v5 = orderedCollection;
  if (orderedCollection)
  {
    v6 = orderedCollection;
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
  mouseInput = [(GCMouse *)self mouseInput];
  liveInputFacade = [(GCMouseInput *)mouseInput liveInputFacade];

  return liveInputFacade;
}

- (int64_t)compareTo:(id)to
{
  toCopy = to;
  creationSequence = [(GCMouse *)self creationSequence];
  if (creationSequence >= [toCopy creationSequence])
  {
    creationSequence2 = [(GCMouse *)self creationSequence];
    v6 = creationSequence2 > [toCopy creationSequence];
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
  vendorName = [(GCMouse *)self vendorName];
  v5 = [v3 stringWithFormat:@"<GCMouse %p '%@'>", self, vendorName];

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
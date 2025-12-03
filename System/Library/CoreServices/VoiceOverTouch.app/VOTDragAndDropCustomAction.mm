@interface VOTDragAndDropCustomAction
- (VOTDragAndDropCustomAction)initWithName:(id)name wireDictionary:(id)dictionary;
@end

@implementation VOTDragAndDropCustomAction

- (VOTDragAndDropCustomAction)initWithName:(id)name wireDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  NSRequestConcreteImplementation();
  v8.receiver = self;
  v8.super_class = VOTDragAndDropCustomAction;
  v6 = [(VOTCustomAction *)&v8 initWithWireDictionary:dictionaryCopy];

  return v6;
}

@end
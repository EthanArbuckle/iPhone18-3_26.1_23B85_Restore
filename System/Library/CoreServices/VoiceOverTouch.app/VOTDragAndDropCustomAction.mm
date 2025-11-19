@interface VOTDragAndDropCustomAction
- (VOTDragAndDropCustomAction)initWithName:(id)a3 wireDictionary:(id)a4;
@end

@implementation VOTDragAndDropCustomAction

- (VOTDragAndDropCustomAction)initWithName:(id)a3 wireDictionary:(id)a4
{
  v5 = a4;
  objc_opt_class();
  NSRequestConcreteImplementation();
  v8.receiver = self;
  v8.super_class = VOTDragAndDropCustomAction;
  v6 = [(VOTCustomAction *)&v8 initWithWireDictionary:v5];

  return v6;
}

@end
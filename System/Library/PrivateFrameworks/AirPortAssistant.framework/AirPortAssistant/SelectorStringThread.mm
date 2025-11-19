@interface SelectorStringThread
+ (void)detachNewThreadSelector:(SEL)a3 toTarget:(id)a4 withObject:(id)a5;
@end

@implementation SelectorStringThread

+ (void)detachNewThreadSelector:(SEL)a3 toTarget:(id)a4 withObject:(id)a5
{
  v8 = objc_allocWithZone(MEMORY[0x277CCACC8]);
  v10 = objc_msgSend_initWithTarget_selector_object_(v8, v9, a4, a3, a5);
  v11 = NSStringFromSelector(a3);
  objc_msgSend_setName_(v10, v12, v11);

  objc_msgSend_start(v10, v13, v14);
}

@end
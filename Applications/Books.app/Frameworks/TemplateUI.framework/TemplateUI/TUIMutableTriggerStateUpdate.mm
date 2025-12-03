@interface TUIMutableTriggerStateUpdate
- (TUIMutableTriggerStateUpdate)init;
- (void)addUpdateForTrigger:(id)trigger state:(unint64_t)state;
- (void)addUpdateForTrigger:(id)trigger value:(double)value;
@end

@implementation TUIMutableTriggerStateUpdate

- (TUIMutableTriggerStateUpdate)init
{
  v12.receiver = self;
  v12.super_class = TUIMutableTriggerStateUpdate;
  v2 = [(TUIMutableTriggerStateUpdate *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    triggerNameToTriggerMapping = v2->_triggerNameToTriggerMapping;
    v2->_triggerNameToTriggerMapping = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    triggerToStateMapping = v2->_triggerToStateMapping;
    v2->_triggerToStateMapping = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    triggerToValueMapping = v2->_triggerToValueMapping;
    v2->_triggerToValueMapping = v7;

    v9 = objc_alloc_init(NSMutableArray);
    orderedKeys = v2->_orderedKeys;
    v2->_orderedKeys = v9;
  }

  return v2;
}

- (void)addUpdateForTrigger:(id)trigger state:(unint64_t)state
{
  orderedKeys = self->_orderedKeys;
  triggerCopy = trigger;
  name = [triggerCopy name];
  [(NSMutableArray *)orderedKeys addObject:name];

  triggerToStateMapping = self->_triggerToStateMapping;
  v10 = [NSNumber numberWithUnsignedInteger:state];
  name2 = [triggerCopy name];
  [(NSMutableDictionary *)triggerToStateMapping setValue:v10 forKey:name2];

  triggerNameToTriggerMapping = self->_triggerNameToTriggerMapping;
  name3 = [triggerCopy name];
  [(NSMutableDictionary *)triggerNameToTriggerMapping setValue:triggerCopy forKey:name3];
}

- (void)addUpdateForTrigger:(id)trigger value:(double)value
{
  triggerCopy = trigger;
  triggerToValueMapping = self->_triggerToValueMapping;
  v7 = [NSNumber numberWithDouble:value];
  name = [triggerCopy name];
  [(NSMutableDictionary *)triggerToValueMapping setValue:v7 forKey:name];

  triggerNameToTriggerMapping = self->_triggerNameToTriggerMapping;
  name2 = [triggerCopy name];
  v11 = [(NSMutableDictionary *)triggerNameToTriggerMapping objectForKeyedSubscript:name2];

  if (!v11)
  {
    orderedKeys = self->_orderedKeys;
    name3 = [triggerCopy name];
    [(NSMutableArray *)orderedKeys addObject:name3];

    v14 = self->_triggerNameToTriggerMapping;
    name4 = [triggerCopy name];
    [(NSMutableDictionary *)v14 setValue:triggerCopy forKey:name4];
  }
}

@end
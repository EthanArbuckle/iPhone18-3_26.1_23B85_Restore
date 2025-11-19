@interface TUIMutableTriggerStateUpdate
- (TUIMutableTriggerStateUpdate)init;
- (void)addUpdateForTrigger:(id)a3 state:(unint64_t)a4;
- (void)addUpdateForTrigger:(id)a3 value:(double)a4;
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

- (void)addUpdateForTrigger:(id)a3 state:(unint64_t)a4
{
  orderedKeys = self->_orderedKeys;
  v7 = a3;
  v8 = [v7 name];
  [(NSMutableArray *)orderedKeys addObject:v8];

  triggerToStateMapping = self->_triggerToStateMapping;
  v10 = [NSNumber numberWithUnsignedInteger:a4];
  v11 = [v7 name];
  [(NSMutableDictionary *)triggerToStateMapping setValue:v10 forKey:v11];

  triggerNameToTriggerMapping = self->_triggerNameToTriggerMapping;
  v13 = [v7 name];
  [(NSMutableDictionary *)triggerNameToTriggerMapping setValue:v7 forKey:v13];
}

- (void)addUpdateForTrigger:(id)a3 value:(double)a4
{
  v16 = a3;
  triggerToValueMapping = self->_triggerToValueMapping;
  v7 = [NSNumber numberWithDouble:a4];
  v8 = [v16 name];
  [(NSMutableDictionary *)triggerToValueMapping setValue:v7 forKey:v8];

  triggerNameToTriggerMapping = self->_triggerNameToTriggerMapping;
  v10 = [v16 name];
  v11 = [(NSMutableDictionary *)triggerNameToTriggerMapping objectForKeyedSubscript:v10];

  if (!v11)
  {
    orderedKeys = self->_orderedKeys;
    v13 = [v16 name];
    [(NSMutableArray *)orderedKeys addObject:v13];

    v14 = self->_triggerNameToTriggerMapping;
    v15 = [v16 name];
    [(NSMutableDictionary *)v14 setValue:v16 forKey:v15];
  }
}

@end
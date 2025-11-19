@interface GCMotionEventHIDAdapter
@end

@implementation GCMotionEventHIDAdapter

void __51___GCMotionEventHIDAdapter_initWithSource_service___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((!v2 || v2 == IOHIDEventGetSenderID() || IOHIDEventGetSenderID() == -1) && IOHIDEventGetType() == 1)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 65280 && v4 == 59)
    {
      v5 = objc_opt_new();
      [v5 setTimestamp:IOHIDEventGetTimeStamp()];
      v6 = IOHIDEventGetChildren();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          v10 = 0;
          do
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v23 + 1) + 8 * v10);
            Type = IOHIDEventGetType();
            switch(Type)
            {
              case 10:
                [v5 setHasAttitude:1];
                IOHIDEventGetFloatValue();
                [v5 setAttitudeX:?];
                IOHIDEventGetFloatValue();
                [v5 setAttitudeY:?];
                IOHIDEventGetFloatValue();
                [v5 setAttitudeZ:?];
                IOHIDEventGetFloatValue();
                [v5 setAttitudeW:?];
                break;
              case 13:
                [v5 setHasAccelerometer:1];
                IOHIDEventGetDoubleValue();
                [v5 setAccelerometerX:?];
                IOHIDEventGetDoubleValue();
                [v5 setAccelerometerY:?];
                IOHIDEventGetDoubleValue();
                [v5 setAccelerometerZ:?];
                break;
              case 20:
                [v5 setHasGyro:1];
                IOHIDEventGetDoubleValue();
                [v5 setGyroPitch:?];
                IOHIDEventGetDoubleValue();
                [v5 setGyroYaw:?];
                IOHIDEventGetDoubleValue();
                [v5 setGyroRoll:?];
                break;
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v8);
      }

      v13 = objc_getProperty(*(a1 + 40), sel_observers, 24, 1);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          v17 = 0;
          do
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            (*(*(*(&v19 + 1) + 8 * v17++) + 16))();
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v15);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __48___GCMotionEventHIDAdapter_observeMotionEvents___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = _Block_copy(*(a1 + 40));
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    do
    {
      v5 = [*(a1 + 32) observers];
      v6 = [v5 mutableCopy];

      v7 = _Block_copy(*(a1 + 40));
      [v6 removeObject:v7];

      [*(a1 + 32) setObservers:v6];
      v8 = [*(a1 + 32) observers];
      v9 = _Block_copy(*(a1 + 40));
      v10 = [v8 containsObject:v9];
    }

    while ((v10 & 1) != 0);
  }
}

@end
@interface GCRacingWheel
- (GCPhysicalInputProfile)physicalInputProfile;
- (GCRacingWheel)capture;
- (GCRacingWheel)init;
- (GCRacingWheel)initWithComponents:(id)a3;
- (GCRacingWheel)initWithIdentifier:(id)a3 components:(id)a4;
- (GCRacingWheelInput)wheelInput;
- (NSString)productCategory;
- (NSString)vendorName;
- (id)componentForProtocol:(void *)a1;
- (id)components;
- (void)setComponents:(void *)a1;
- (void)setHandlerQueue:(id)a3;
@end

@implementation GCRacingWheel

- (GCRacingWheel)initWithIdentifier:(id)a3 components:(id)a4
{
  v8.receiver = self;
  v8.super_class = GCRacingWheel;
  v4 = a4;
  v5 = [(GCRacingWheel *)&v8 init];
  objc_storeStrong(&v5->_handlerQueue, MEMORY[0x1E69E96A0]);
  components = v5->_components;
  v5->_components = MEMORY[0x1E695E0F0];

  [(GCRacingWheel *)v5 setComponents:v4];
  return v5;
}

- (GCRacingWheel)initWithComponents:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(GCRacingWheel *)self initWithIdentifier:v6 components:v5];

  return v7;
}

- (GCRacingWheel)init
{
  [(GCRacingWheel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCPhysicalInputProfile)physicalInputProfile
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-physicalInputProfile is not supported on GCRacingWheel.  Use -wheelInput instead." userInfo:0];
  objc_exception_throw(v2);
}

- (GCRacingWheelInput)wheelInput
{
  v2 = [(_GCDevicePhysicalInputComponent *)&self->_input->super.isa defaultPhysicalInput];
  v3 = [(_GCDevicePhysicalInputBase *)v2 facade];

  return v3;
}

id __24__GCRacingWheel_capture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 capture];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setComponents:(void *)a1
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 differenceFromArray:a1[3]];
    v6 = [v5 insertions];

    v7 = [v4 differenceFromArray:a1[3]];
    v8 = [v7 removals];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v32 + 1) + 8 * i) object];
          [v14 setDevice:0];
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    v26 = v9;

    v27 = v4;
    objc_setProperty(a1, sel_setComponents_, 24, v4, 1, 1);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v28 + 1) + 8 * j) object];
          [v20 setDevice:a1];
          if (objc_opt_respondsToSelector())
          {
            [v20 setDispatchQueue:a1[1]];
          }

          v21 = [v20 conformsToProtocol:&unk_1F4EA0600];
          v22 = a1 + 4;
          if (v21 & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v22 = a1 + 5, (isKindOfClass))
          {
            *v22 = v20;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    if (!a1[5])
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:sel_setComponents_ object:a1 file:@"GCRacingWheel.m" lineNumber:92 description:@"Missing required <GCDevicePhysicalInput> component."];
    }

    v4 = v27;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)components
{
  if (a1)
  {
    a1 = objc_getProperty(a1, sel_components, 24, 1);
    v1 = vars8;
  }

  return a1;
}

- (id)componentForProtocol:(void *)a1
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [(GCRacingWheel *)a1 components];
    OUTLINED_FUNCTION_0_34();
    v6 = [v5 countByEnumeratingWithState:0 objects:? count:?];
    if (v6)
    {
      v7 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(8 * i);
          if ([v9 conformsToProtocol:v3])
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_0_34();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setHandlerQueue:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_handlerQueue, a3);
  v6 = [(GCRacingWheel *)self components];
  OUTLINED_FUNCTION_0_34();
  v8 = [v7 countByEnumeratingWithState:0 objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 setDispatchQueue:v5];
        }
      }

      OUTLINED_FUNCTION_0_34();
      v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSString)vendorName
{
  v2 = [(GCRacingWheel *)self componentForProtocol:?];
  v3 = [v2 vendorName];

  return v3;
}

- (NSString)productCategory
{
  v2 = [(GCRacingWheel *)self componentForProtocol:?];
  v3 = [v2 productCategory];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Racing Wheel";
  }

  v6 = v5;

  return &v5->isa;
}

- (GCRacingWheel)capture
{
  v2 = [(GCRacingWheel *)self components];
  v3 = [v2 gc_arrayByTransformingElementsWithOptions:1 usingBlock:&__block_literal_global_48];

  v4 = [objc_alloc(objc_opt_class()) initWithComponents:v3];
  v4[48] = 1;

  return v4;
}

@end
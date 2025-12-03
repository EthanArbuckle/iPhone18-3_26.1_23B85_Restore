@interface BKSHIDEventDiscreteDispatchingRoot
- (id)decodePayload:(id)payload;
@end

@implementation BKSHIDEventDiscreteDispatchingRoot

- (id)decodePayload:(id)payload
{
  v35 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  error = [payloadCopy error];

  if (error)
  {
    v5 = BKLogEventDelivery();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v6 = 0;
      goto LABEL_4;
    }

    error2 = [payloadCopy error];
    *buf = 138543362;
    v34 = error2;
    v18 = "WTAF sticky error %{public}@";
LABEL_31:
    _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

    goto LABEL_3;
  }

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [payloadCopy decodeObjectOfClasses:v12 forKey:@"payload"];

  if (!v13)
  {
    v5 = BKLogEventDelivery();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    error2 = [payloadCopy error];
    *buf = 138543362;
    v34 = error2;
    v18 = "payload is missing %{public}@";
    goto LABEL_31;
  }

  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = v16;

  if (!v19)
  {
    v5 = BKLogEventDelivery();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 138543362;
    v34 = objc_opt_class();
    error2 = v34;
    v18 = "payload is wrong class (got %{public}@)";
    goto LABEL_31;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v19;
  v20 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v5);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = BKLogEventDelivery();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = objc_opt_class();
            *buf = 138543362;
            v34 = v26;
            v27 = v26;
            _os_log_error_impl(&dword_186345000, v25, OS_LOG_TYPE_ERROR, "payload contains wrong class (got %{public}@)", buf, 0xCu);
          }

          goto LABEL_3;
        }
      }

      v21 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v6 = v5;
LABEL_4:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end
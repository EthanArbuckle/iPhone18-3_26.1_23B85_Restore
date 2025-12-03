@interface SIDE5Operations
+ (e5rt_execution_stream_operation)compileAndRetrieveESOP:(id)p alreadyCompiled:(BOOL)compiled error:(id *)error;
+ (id)executeESOP:(e5rt_execution_stream_operation *)p inputData:(id)data error:(id *)error;
+ (id)generateErrorObject:(id)object;
+ (id)getLastErrorMessage;
+ (id)parseOutputData:()unordered_map<std:(e5rt_io_port *) :()std:()std:(std:(e5rt_io_port *>>> *)std :(id *)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string> string error:;
+ (int)bindInputs:(e5rt_execution_stream_operation *)inputs inputData:(id)data error:(id *)error;
+ (int)instantiateProgramLibrary:(e5rt_program_library *)library FromBundle:(id)bundle error:(id *)error;
+ (int)instantiateProgramLibrary:(e5rt_program_library *)library FromModel:(id)model error:(id *)error;
+ (unordered_map<std::string,)bindOutputs:()std:()std:(std:(e5rt_io_port *>>> *__return_ptr)retstr :(id)a2 allocator<std:(SEL)std :(e5rt_execution_stream_operation *)a4 pair<const)std:(id *)a5 :string :equal_to<std::string> :hash<std::string> error:;
+ (void)releaseESOP:(e5rt_execution_stream_operation *)p;
@end

@implementation SIDE5Operations

+ (e5rt_execution_stream_operation)compileAndRetrieveESOP:(id)p alreadyCompiled:(BOOL)compiled error:(id *)error
{
  compiledCopy = compiled;
  pCopy = p;
  v11 = 0;
  if (compiledCopy)
  {
    v9 = [self instantiateProgramLibrary:&v11 FromBundle:pCopy error:error];
  }

  else
  {
    v9 = [self instantiateProgramLibrary:&v11 FromModel:pCopy error:error];
  }

  if (v9 || e5rt_program_library_retain_program_function())
  {
    if (error)
    {
      *error = [self generateErrorObject:0];
    }

LABEL_8:
    e5rt_program_library_release();
    goto LABEL_9;
  }

  if (!e5rt_precompiled_compute_op_create_options_create_with_program_function())
  {
    if (!e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options())
    {
      e5rt_precompiled_compute_op_create_options_release();
      e5rt_program_function_release();
      e5rt_program_library_release();
      goto LABEL_9;
    }

    if (error)
    {
      *error = [self generateErrorObject:0];
    }

    e5rt_precompiled_compute_op_create_options_release();
    e5rt_program_function_release();
    goto LABEL_8;
  }

  if (error)
  {
    *error = [self generateErrorObject:0];
  }

  e5rt_program_library_release();
  e5rt_program_function_release();
LABEL_9:

  return 0;
}

+ (int)instantiateProgramLibrary:(e5rt_program_library *)library FromBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  NSLog(@"Bundle Path: %@", bundleCopy);
  [bundleCopy UTF8String];
  v8 = e5rt_program_library_create();
  v9 = v8;
  if (error && v8)
  {
    *error = [self generateErrorObject:0];
  }

  return v9;
}

+ (int)instantiateProgramLibrary:(e5rt_program_library *)library FromModel:(id)model error:(id *)error
{
  modelCopy = model;
  v8 = e5rt_e5_compiler_create();
  if (v8)
  {
    if (error)
    {
      *error = [self generateErrorObject:0];
    }
  }

  else
  {
    v8 = e5rt_e5_compiler_options_create();
    if (v8)
    {
      if (error)
      {
        *error = [self generateErrorObject:0];
      }

      e5rt_e5_compiler_release();
    }

    else
    {
      v8 = e5rt_e5_compiler_options_set_compute_device_types_mask();
      if (v8)
      {
        if (error)
        {
          *error = [self generateErrorObject:0];
        }
      }

      else
      {
        NSLog(@"Path: %@", modelCopy);
        [modelCopy UTF8String];
        v8 = e5rt_e5_compiler_compile();
        if (!v8)
        {
          e5rt_e5_compiler_release();
          e5rt_e5_compiler_options_release();
          v8 = 0;
          goto LABEL_17;
        }

        if (error)
        {
          *error = [self generateErrorObject:0];
        }
      }

      e5rt_e5_compiler_release();
      e5rt_e5_compiler_options_release();
    }
  }

LABEL_17:

  return v8;
}

+ (id)executeESOP:(e5rt_execution_stream_operation *)p inputData:(id)data error:(id *)error
{
  dataCopy = data;
  if (!p)
  {
    if (error)
    {
      [self generateErrorObject:@"ESOP handle is NULL in executeESOP"];
      *error = v10 = 0;
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if ([self bindInputs:p inputData:dataCopy error:error])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_25;
  }

  [self bindOutputs:p error:error];
  v15 = 0;
  if (e5rt_execution_stream_create())
  {
    if (error)
    {
      *error = [self generateErrorObject:0];
    }

    for (i = v17; i; i = *i)
    {
      e5rt_io_port_release();
    }
  }

  else if (e5rt_execution_stream_encode_operation())
  {
    if (error)
    {
      *error = [self generateErrorObject:0];
    }

    e5rt_execution_stream_release();
    for (j = v17; j; j = *j)
    {
      e5rt_io_port_release();
    }
  }

  else
  {
    if (!e5rt_execution_stream_execute_sync())
    {
      e5rt_execution_stream_release();
      sub_100003588(v14, v16);
      v10 = [self parseOutputData:v14 error:error];
      sub_1000034A4(v14);
      goto LABEL_24;
    }

    if (error)
    {
      *error = [self generateErrorObject:0];
    }

    e5rt_execution_stream_release();
    for (k = v17; k; k = *k)
    {
      e5rt_io_port_release();
    }
  }

  sub_10000352C(v16);
  v10 = 0;
LABEL_24:
  sub_1000034A4(v16);
LABEL_25:

  return v10;
}

+ (id)parseOutputData:()unordered_map<std:(e5rt_io_port *) :()std:()std:(std:(e5rt_io_port *>>> *)std :(id *)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string> string error:
{
  v6 = objc_opt_new();
  var0 = std->var0.var1.var0;
  if (var0)
  {
    while (1)
    {
      v8 = var0 + 2;
      if (*(var0 + 39) < 0)
      {
        v8 = *v8;
      }

      v9 = [NSString stringWithUTF8String:v8];
      NSLog(@"[parseOutputData] Processing output: %@, outputPort: %p", v9, var0[5]);
      if (e5rt_io_port_retain_buffer_object())
      {
        break;
      }

      if (e5rt_buffer_object_get_iosurface() || e5rt_io_port_retain_tensor_desc())
      {
        if (a4)
        {
          *a4 = [self generateErrorObject:0];
        }

        e5rt_buffer_object_release();
        e5rt_io_port_release();
        goto LABEL_35;
      }

      e5rt_io_port_release();
      if (e5rt_tensor_desc_retain_dtype())
      {
        if (a4)
        {
          *a4 = [self generateErrorObject:0];
        }

        e5rt_tensor_desc_release();
        e5rt_buffer_object_release();
        goto LABEL_35;
      }

      if (e5rt_tensor_desc_dtype_get_element_size())
      {
        if (a4)
        {
          *a4 = [self generateErrorObject:0];
        }

        goto LABEL_31;
      }

      if (e5rt_tensor_desc_get_shape())
      {
        if (a4)
        {
          *a4 = [self generateErrorObject:0];
        }

        goto LABEL_31;
      }

      v10 = IOSurfaceLock(0, 1u, 0);
      if (v10)
      {
        if (a4)
        {
          v15 = [NSString stringWithFormat:@"IOSurfaceLock failed with code: %d", v10];
          *a4 = [self generateErrorObject:v15];
        }

LABEL_31:
        e5rt_tensor_desc_release();
        e5rt_buffer_object_release();
        e5rt_tensor_desc_dtype_release();
        goto LABEL_35;
      }

      BaseAddress = IOSurfaceGetBaseAddress(0);
      NSLog(@"[parseOutputData] Calculated totalSizeBytes: %zu", 0);
      v12 = [NSData dataWithBytesNoCopy:BaseAddress length:0 freeWhenDone:0];
      [v6 setObject:v12 forKeyedSubscript:v9];
      v13 = IOSurfaceUnlock(0, 1u, 0);
      if (v13)
      {
        if (a4)
        {
          v16 = [NSString stringWithFormat:@"IOSurfaceUnlock failed with code: %d", v13];
          *a4 = [self generateErrorObject:v16];
        }

        e5rt_tensor_desc_dtype_release();
        e5rt_tensor_desc_release();
        e5rt_buffer_object_release();

        goto LABEL_35;
      }

      e5rt_tensor_desc_dtype_release();
      e5rt_tensor_desc_release();
      e5rt_buffer_object_release();

      var0 = *var0;
      if (!var0)
      {
        goto LABEL_13;
      }
    }

    if (a4)
    {
      *a4 = [self generateErrorObject:0];
    }

    e5rt_io_port_release();
LABEL_35:

    v14 = 0;
  }

  else
  {
LABEL_13:
    v14 = v6;
  }

  return v14;
}

+ (int)bindInputs:(e5rt_execution_stream_operation *)inputs inputData:(id)data error:(id *)error
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  dataCopy = data;
  if (![dataCopy countByEnumeratingWithState:&v17 objects:v23 count:16])
  {
    iosurface = 0;
    goto LABEL_42;
  }

  *v18;
  *v18;
  v7 = **(&v17 + 1);
  v8 = **(&v17 + 1);
  [v7 UTF8String];
  iosurface = e5rt_execution_stream_operation_retain_input_port();
  if (iosurface)
  {
    if (error)
    {
      *error = [self generateErrorObject:0];
    }
  }

  else
  {
    iosurface = e5rt_io_port_retain_tensor_desc();
    if (iosurface)
    {
      if (error)
      {
        *error = [self generateErrorObject:0];
      }

      e5rt_io_port_release();
    }

    else
    {
      iosurface = e5rt_tensor_desc_alloc_buffer_object();
      if (!iosurface)
      {
        iosurface = e5rt_buffer_object_get_iosurface();
        if (iosurface)
        {
          if (error)
          {
            *error = [self generateErrorObject:0];
          }
        }

        else
        {
          iosurface = e5rt_tensor_desc_retain_dtype();
          if (!iosurface)
          {
            iosurface = e5rt_tensor_desc_dtype_get_element_size();
            if (iosurface)
            {
              if (error)
              {
                *error = [self generateErrorObject:0];
              }
            }

            else
            {
              iosurface = e5rt_tensor_desc_get_shape();
              if (iosurface)
              {
                if (error)
                {
                  *error = [self generateErrorObject:0];
                }
              }

              else
              {
                iosurface = e5rt_tensor_desc_get_strides();
                if (!iosurface)
                {
                  v10 = IOSurfaceLock(0, 0, 0);
                  if (v10)
                  {
                    if (error)
                    {
                      v12 = [NSString stringWithFormat:@"IOSurfaceLock failed with code: %d", v10];
                      *error = [self generateErrorObject:v12];
                    }

                    e5rt_io_port_release();
                    e5rt_tensor_desc_release();
                    e5rt_buffer_object_release();
                    e5rt_tensor_desc_dtype_release();
                    iosurface = 11;
                  }

                  else
                  {
                    IOSurfaceGetBaseAddress(0);
                    v11 = [dataCopy objectForKeyedSubscript:v7];
                    if (error)
                    {
                      v21 = NSLocalizedDescriptionKey;
                      v13 = [NSString stringWithFormat:@"Unsupported tensor rank %zu for feature '%@'. Only ranks 1 and 2 are supported.", 0, v7];
                      v22 = v13;
                      v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
                      *error = [NSError errorWithDomain:@"SIDInferenceProvider" code:11 userInfo:v14];
                    }

                    IOSurfaceUnlock(0, 0, 0);
                    e5rt_io_port_release();
                    e5rt_tensor_desc_release();
                    e5rt_buffer_object_release();
                    e5rt_tensor_desc_dtype_release();
                    iosurface = 11;
                  }

                  goto LABEL_42;
                }

                if (error)
                {
                  *error = [self generateErrorObject:0];
                }
              }
            }

            e5rt_io_port_release();
            e5rt_tensor_desc_release();
            e5rt_buffer_object_release();
            e5rt_tensor_desc_dtype_release();
            goto LABEL_42;
          }

          if (error)
          {
            *error = [self generateErrorObject:0];
          }
        }

        e5rt_io_port_release();
        e5rt_tensor_desc_release();
        e5rt_buffer_object_release();
        goto LABEL_42;
      }

      if (error)
      {
        *error = [self generateErrorObject:0];
      }

      e5rt_io_port_release();
      e5rt_tensor_desc_release();
    }
  }

LABEL_42:

  return iosurface;
}

+ (unordered_map<std::string,)bindOutputs:()std:()std:(std:(e5rt_io_port *>>> *__return_ptr)retstr :(id)a2 allocator<std:(SEL)std :(e5rt_execution_stream_operation *)a4 pair<const)std:(id *)a5 :string :equal_to<std::string> :hash<std::string> error:
{
  v31 = 0;
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  result = e5rt_execution_stream_operation_get_num_outputs();
  if (result)
  {
    if (a5)
    {
      v9 = [a2 generateErrorObject:0];
      *a5 = v9;
      localizedDescription = [v9 localizedDescription];
      NSLog(@"Error: Failed to get number of outputs, %@", localizedDescription);
    }

    return result;
  }

  sub_1000032A0(__p, v31);
  if (e5rt_execution_stream_operation_get_output_names())
  {
    if (!a5)
    {
      goto LABEL_35;
    }

    v11 = [a2 generateErrorObject:0];
    *a5 = v11;
    localizedDescription2 = [v11 localizedDescription];
    NSLog(@"Error: Failed to get output names, %@", localizedDescription2);
    goto LABEL_7;
  }

  if (v31)
  {
    v13 = 0;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v14 = *(__p[0] + v13);
      NSLog(@"[bindOutputs] Output name: %s", v14);
      if (e5rt_execution_stream_operation_retain_output_port())
      {
        break;
      }

      if (e5rt_io_port_retain_tensor_desc())
      {
        if (a5)
        {
          v19 = [a2 generateErrorObject:0];
          *a5 = v19;
          localizedDescription3 = [v19 localizedDescription];
          NSLog(@"Error: Failed to retain tensor descriptors, %@", localizedDescription3);
        }

        e5rt_io_port_release();
        goto LABEL_35;
      }

      if (e5rt_tensor_desc_alloc_buffer_object())
      {
        if (a5)
        {
          v21 = [a2 generateErrorObject:0];
          *a5 = v21;
          localizedDescription4 = [v21 localizedDescription];
          NSLog(@"Error: Failed to alloc output buffer object, %@", localizedDescription4);
        }

        e5rt_io_port_release();
        e5rt_tensor_desc_release();
        goto LABEL_35;
      }

      if (e5rt_io_port_bind_buffer_object())
      {
        if (a5)
        {
          v23 = [a2 generateErrorObject:0];
          *a5 = v23;
          localizedDescription5 = [v23 localizedDescription];
          NSLog(@"Error: Failed to bind output buffer object, %@", localizedDescription5);
        }

        e5rt_io_port_release();
        e5rt_tensor_desc_release();
        e5rt_buffer_object_release();
        goto LABEL_35;
      }

      v15 = v29;
      v16 = strlen(v14);
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10000348C();
      }

      v17 = v16;
      if (v16 >= 0x17)
      {
        operator new();
      }

      v26 = v16;
      if (v16)
      {
        memmove(&__dst, v14, v16);
      }

      *(&__dst + v17) = 0;
      p_dst = &__dst;
      sub_1000041A0(retstr, &__dst)[5] = v15;
      if (v26 < 0)
      {
        operator delete(__dst);
      }

      NSLog(@"[bindOutputs] Added '%s' -> %p to output map", v14, v29);
      e5rt_tensor_desc_release();
      e5rt_buffer_object_release();
      if (++v13 >= v31)
      {
        goto LABEL_35;
      }
    }

    if (!a5)
    {
      goto LABEL_35;
    }

    v18 = [a2 generateErrorObject:0];
    *a5 = v18;
    localizedDescription2 = [v18 localizedDescription];
    NSLog(@"Error: Failed to retain output port, %@", localizedDescription2);
LABEL_7:
  }

LABEL_35:
  result = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

+ (void)releaseESOP:(e5rt_execution_stream_operation *)p
{
  if (p)
  {
    e5rt_execution_stream_operation_release();
  }
}

+ (id)getLastErrorMessage
{
  last_error_message = e5rt_get_last_error_message();
  if (last_error_message)
  {
    last_error_message = [NSString stringWithUTF8String:last_error_message];
  }

  return last_error_message;
}

+ (id)generateErrorObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = [NSError alloc];
    v14 = NSLocalizedDescriptionKey;
    v15 = objectCopy;
    getLastErrorMessage = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v7 = [v5 initWithDomain:@"com.apple.servicesintelligenced" code:-1 userInfo:getLastErrorMessage];
  }

  else
  {
    getLastErrorMessage = [self getLastErrorMessage];
    v8 = [NSString stringWithFormat:@"E5RT operation failed with message = %@", getLastErrorMessage];
    v9 = [NSError alloc];
    v12 = NSLocalizedDescriptionKey;
    v13 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [v9 initWithDomain:@"com.apple.servicesintelligenced" code:-1 userInfo:v10];
  }

  return v7;
}

@end
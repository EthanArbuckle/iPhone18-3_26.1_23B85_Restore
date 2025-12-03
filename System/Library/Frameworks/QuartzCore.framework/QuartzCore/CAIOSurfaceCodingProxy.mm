@interface CAIOSurfaceCodingProxy
- (CAIOSurfaceCodingProxy)initWithCoder:(id)coder;
- (CAIOSurfaceCodingProxy)initWithObject:(id)object;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAIOSurfaceCodingProxy

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_locked)
  {
    IOSurfaceUnlock(self->_surface, 1u, 0);
  }

  surface = self->_surface;
  if (surface)
  {
    CFRelease(surface);
  }

  v4.receiver = self;
  v4.super_class = CAIOSurfaceCodingProxy;
  [(CAIOSurfaceCodingProxy *)&v4 dealloc];
}

- (CAIOSurfaceCodingProxy)initWithCoder:(id)coder
{
  v76 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = CAIOSurfaceCodingProxy;
  v4 = [(CAIOSurfaceCodingProxy *)&v50 init];
  if (v4)
  {
    context = objc_autoreleasePoolPush();
    if (iosurface_info_classes(void)::once != -1)
    {
      dispatch_once(&iosurface_info_classes(void)::once, &__block_literal_global_515);
    }

    v5 = [coder decodeObjectOfClasses:iosurface_info_classes(void)::classes forKey:@"IOSurfaceInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (iosurface_keys_allow_list(void)::once[0] != -1)
      {
        dispatch_once(iosurface_keys_allow_list(void)::once, &__block_literal_global_509);
      }

      v6 = iosurface_keys_allow_list(void)::keys;
      if (iosurface_plane_keys_allow_list(void)::once != -1)
      {
        dispatch_once(&iosurface_plane_keys_allow_list(void)::once, &__block_literal_global_511);
      }

      v7 = iosurface_plane_keys_allow_list(void)::keys;
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
      coderCopy = coder;
      v43 = v4;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v9 = [v6 countByEnumeratingWithState:&v72 objects:v71 count:16];
      if (v9)
      {
        v10 = *v73;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v73 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v72 + 1) + 8 * i);
            v13 = [v5 objectForKeyedSubscript:v12];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v8 setObject:v13 forKeyedSubscript:v12];
            }
          }

          v9 = [v6 countByEnumeratingWithState:&v72 objects:v71 count:16];
        }

        while (v9);
      }

      v41 = *MEMORY[0x1E696D0A8];
      coder = coderCopy;
      v4 = v43;
      v14 = [v5 objectForKeyedSubscript:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v67 objects:v66 count:16];
        v48 = v8;
        if (!v15)
        {
          goto LABEL_27;
        }

        v16 = *v68;
        v17 = 1;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v68 != v16)
            {
              objc_enumerationMutation(v14);
            }

            objc_opt_class();
            v17 &= objc_opt_isKindOfClass();
          }

          v15 = [v14 countByEnumeratingWithState:&v67 objects:v66 count:16];
        }

        while (v15);
        v8 = v48;
        if (v17)
        {
LABEL_27:
          v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v19 = [v14 countByEnumeratingWithState:&v62 objects:v61 count:16];
          if (v19)
          {
            v45 = v14;
            v46 = *v63;
            do
            {
              v20 = 0;
              v49 = v19;
              do
              {
                if (*v63 != v46)
                {
                  objc_enumerationMutation(v14);
                }

                v21 = *(*(&v62 + 1) + 8 * v20);
                v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v21, "count")}];
                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                v23 = [v7 countByEnumeratingWithState:&v57 objects:v56 count:16];
                if (v23)
                {
                  v24 = *v58;
                  do
                  {
                    for (k = 0; k != v23; ++k)
                    {
                      if (*v58 != v24)
                      {
                        objc_enumerationMutation(v7);
                      }

                      v26 = *(*(&v57 + 1) + 8 * k);
                      v27 = [v21 objectForKeyedSubscript:v26];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v22 setObject:v27 forKeyedSubscript:v26];
                      }
                    }

                    v23 = [v7 countByEnumeratingWithState:&v57 objects:v56 count:16];
                  }

                  while (v23);
                }

                [v47 addObject:v22];
                v8 = v48;
                v14 = v45;
                ++v20;
              }

              while (v20 != v49);
              v19 = [v45 countByEnumeratingWithState:&v62 objects:v61 count:16];
            }

            while (v19);
          }

          [v8 setObject:v47 forKeyedSubscript:v41];
          coder = coderCopy;
          v4 = v43;
        }
      }

      v28 = IOSurfaceCreate(v8);
      v4->_surface = v28;
      if (!v28)
      {
        goto LABEL_70;
      }
    }

    else if (!v4->_surface)
    {
LABEL_70:
      objc_autoreleasePoolPop(context);
      return v4;
    }

    if (IOSurfaceGetCompressionTypeOfPlane() - 1 > 1)
    {
      goto LABEL_74;
    }

    if (CADeviceSupportsUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
    }

    if (CADeviceSupportsUniversalCompression::universal == 1)
    {
      CFRelease(v4->_surface);
      v4->_surface = 0;
    }

    else
    {
LABEL_74:
      if (v4->_surface)
      {
        v29 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"IOSurfaceData"];
        v30 = v29;
        if (v29)
        {
          v31 = [v29 length];
          if (v31 >= IOSurfaceGetAllocSize(v4->_surface))
          {
            AllocSize = IOSurfaceGetAllocSize(v4->_surface);
          }

          else
          {
            AllocSize = [v30 length];
          }

          v33 = AllocSize;
          IOSurfaceLock(v4->_surface, 0, 0);
          BaseAddress = IOSurfaceGetBaseAddress(v4->_surface);
          memcpy(BaseAddress, [v30 bytes], v33);
          IOSurfaceUnlock(v4->_surface, 0, 0);
        }

        if (iosurface_property_classes(void)::once != -1)
        {
          dispatch_once(&iosurface_property_classes(void)::once, &__block_literal_global_517);
        }

        v35 = [coder decodeObjectOfClasses:iosurface_property_classes(void)::classes forKey:@"IOSurfaceProperties"];
        v36 = v35;
        if (v35)
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v37 = [v35 countByEnumeratingWithState:&v52 objects:v51 count:16];
          if (v37)
          {
            v38 = *v53;
            do
            {
              for (m = 0; m != v37; ++m)
              {
                if (*v53 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                IOSurfaceSetValue(v4->_surface, *(*(&v52 + 1) + 8 * m), [v36 objectForKey:*(*(&v52 + 1) + 8 * m)]);
              }

              v37 = [v36 countByEnumeratingWithState:&v52 objects:v51 count:16];
            }

            while (v37);
          }
        }

        if ([coder decodeIntForKey:@"IOSurfaceYCbCrMatrixInt"])
        {
          IOSurfaceSetYCbCrMatrix();
        }
      }
    }

    goto LABEL_70;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v55 = *MEMORY[0x1E69E9840];
  if (self->_surface)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if ((CADeviceIsVirtualized::is_virtualized & 1) == 0)
    {
      context = objc_autoreleasePoolPush();
      if (!self->_locked)
      {
        IOSurfaceLock(self->_surface, 1u, 0);
        self->_locked = 1;
      }

      v5 = IOSurfaceCopyAllValues(self->_surface);
      v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:@"CreationProperties"];
      if (iosurface_keys_allow_list(void)::once[0] != -1)
      {
        dispatch_once(iosurface_keys_allow_list(void)::once, &__block_literal_global_509);
      }

      v7 = iosurface_keys_allow_list(void)::keys;
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(iosurface_keys_allow_list(void)::keys, "count") + 1}];
      v33 = v5;
      coderCopy = coder;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v9)
      {
        v10 = *v52;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v52 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v51 + 1) + 8 * i);
            v13 = [v6 objectForKeyedSubscript:v12];
            if (v13)
            {
              [v8 setObject:v13 forKeyedSubscript:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v51 objects:v50 count:16];
        }

        while (v9);
      }

      PlaneCount = IOSurfaceGetPlaneCount(self->_surface);
      if (PlaneCount)
      {
        if (iosurface_plane_keys_allow_list(void)::once != -1)
        {
          dispatch_once(&iosurface_plane_keys_allow_list(void)::once, &__block_literal_global_511);
        }

        v14 = iosurface_plane_keys_allow_list(void)::keys;
        v36 = [v6 objectForKeyedSubscript:@"IOSurfacePlaneInfo"];
        v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:PlaneCount];
        v15 = 0;
        do
        {
          v16 = [v36 objectAtIndexedSubscript:v15];
          v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
          v39 = v15;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v18 = [v14 countByEnumeratingWithState:&v46 objects:v45 count:16];
          if (v18)
          {
            v19 = *v47;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v47 != v19)
                {
                  objc_enumerationMutation(v14);
                }

                v21 = *(*(&v46 + 1) + 8 * j);
                v22 = [v16 objectForKeyedSubscript:v21];
                if (v22)
                {
                  [v17 setObject:v22 forKeyedSubscript:v21];
                }
              }

              v18 = [v14 countByEnumeratingWithState:&v46 objects:v45 count:16];
            }

            while (v18);
          }

          [v37 addObject:v17];
          v15 = v39 + 1;
        }

        while (v39 + 1 != PlaneCount);
        [v8 setObject:v37 forKey:*MEMORY[0x1E696D0A8]];
      }

      v23 = coderCopy;
      [coderCopy encodeObject:v8 forKey:@"IOSurfaceInfo"];
      if (iosurface_property_names(void)::once[0] != -1)
      {
        dispatch_once(iosurface_property_names(void)::once, &__block_literal_global_513);
      }

      v24 = iosurface_property_names(void)::names;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v25 = [iosurface_property_names(void)::names countByEnumeratingWithState:&v41 objects:v40 count:16];
      if (v25)
      {
        dictionary = 0;
        v27 = *v42;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v42 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v41 + 1) + 8 * k);
            v30 = IOSurfaceCopyValue(self->_surface, v29);
            if (v30)
            {
              if (!dictionary)
              {
                dictionary = [MEMORY[0x1E695DF90] dictionary];
              }

              [dictionary setObject:v30 forKey:v29];
              CFRelease(v30);
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v41 objects:v40 count:16];
        }

        while (v25);
        v23 = coderCopy;
        if (dictionary)
        {
          [coderCopy encodeObject:dictionary forKey:@"IOSurfaceProperties"];
        }
      }

      v31 = MEMORY[0x1E695DEF0];
      BaseAddress = IOSurfaceGetBaseAddress(self->_surface);
      [v23 encodeObject:objc_msgSend(v31 forKey:{"dataWithBytesNoCopy:length:freeWhenDone:", BaseAddress, IOSurfaceGetAllocSize(self->_surface), 0), @"IOSurfaceData"}];
      IOSurfaceGetYCbCrMatrix();
      objc_autoreleasePoolPop(context);
    }
  }
}

- (CAIOSurfaceCodingProxy)initWithObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CAIOSurfaceCodingProxy;
  v4 = [(CAIOSurfaceCodingProxy *)&v16 init];
  v5 = v4;
  if (object && v4)
  {
    v6 = CFGetTypeID(object);
    if (CAMachPortGetTypeID::once[0] != -1)
    {
      dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
    }

    if (v6 != CAMachPortGetTypeID::type)
    {
      v9 = CFGetTypeID(object);
      if (v9 == CVPixelBufferGetTypeID())
      {
        IOSurface = CVPixelBufferGetIOSurface(object);
        if (!IOSurface)
        {
          return v5;
        }
      }

      else
      {
        v11 = CFGetTypeID(object);
        if (CAImageQueueGetTypeID::once[0] != -1)
        {
          dispatch_once(CAImageQueueGetTypeID::once, &__block_literal_global_44_15357);
        }

        if (v11 == CAImageQueueGetTypeID::type)
        {
          v8 = CAImageQueueCopyLastIOSurface(object);
          goto LABEL_22;
        }

        v12 = CFGetTypeID(object);
        if (CAIOSurfaceGetTypeID::once != -1)
        {
          dispatch_once(&CAIOSurfaceGetTypeID::once, &__block_literal_global_2576);
        }

        if (v12 == CAIOSurfaceGetTypeID::type)
        {
          v13 = *(object + 2);
          v14 = *(v13 + 128);
          if (v14)
          {
            CFRetain(*(v13 + 128));
          }

          goto LABEL_23;
        }

        IOSurface = object;
      }

      v8 = CFRetain(IOSurface);
      goto LABEL_22;
    }

    v7 = *(object + 4);
    if (v7)
    {
      v8 = IOSurfaceLookupFromMachPort(v7);
LABEL_22:
      v14 = v8;
LABEL_23:
      v5->_surface = v14;
    }
  }

  return v5;
}

@end
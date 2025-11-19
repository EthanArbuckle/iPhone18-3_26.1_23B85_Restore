@interface BSObjCProtocol
+ (id)_gatherPropertyMetadataForProtocol:(_BOOL4)a3 required:;
+ (id)protocolForProtocol:(id)a3;
+ (id)protocolForProtocol:(id)a3 interpreter:(id)a4;
+ (void)_gatherMethodMetadataForRequired:(void *)a3 onProtocol:(void *)a4 toMethods:(void *)a5 andErrors:;
- (BOOL)isEqual:(id)a3;
- (BSObjCProtocol)init;
- (NSArray)inheritedProtocols;
- (id)_initWithName:(void *)a3 protocol:(void *)a4 parsingErrors:(void *)a5 inherited:(void *)a6 methods:(void *)a7 properties:(char)a8 virtual:;
- (id)_unionMethodsIgnoringObjCProtocols:(void *)a1;
- (id)_unionPropertiesIgnoringObjCProtocols:(void *)a1;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)flattenWithIgnoredInheritedProtocols:(id)a3;
- (id)inheritedProtocolForProtocol:(id)a3;
- (id)methodForSelector:(SEL)a3;
- (id)propertyWithName:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation BSObjCProtocol

- (NSArray)inheritedProtocols
{
  if (self->_inheritedProtocols)
  {
    return self->_inheritedProtocols;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (BSObjCProtocol)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSObjCRuntime.m" lineNumber:1127 description:@"init is not allowed on BSObjCProtocol"];

  return 0;
}

- (id)_initWithName:(void *)a3 protocol:(void *)a4 parsingErrors:(void *)a5 inherited:(void *)a6 methods:(void *)a7 properties:(char)a8 virtual:
{
  v58 = *MEMORY[0x1E69E9840];
  v48 = a2;
  v47 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v15 = a7;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v56.receiver = a1;
  v56.super_class = BSObjCProtocol;
  v16 = objc_msgSendSuper2(&v56, sel_init);
  if (v16)
  {
    v17 = [v48 copy];
    v18 = *(v16 + 4);
    *(v16 + 4) = v17;

    objc_storeStrong(v16 + 5, a3);
    v19 = [v49 copy];
    v20 = *(v16 + 1);
    *(v16 + 1) = v19;

    v21 = [v50 copy];
    v22 = *(v16 + 2);
    *(v16 + 2) = v21;

    v23 = [v51 copy];
    v24 = *(v16 + 6);
    *(v16 + 6) = v23;

    v25 = [v15 copy];
    v26 = *(v16 + 7);
    *(v16 + 7) = v25;

    *(v16 + 24) = a8;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v27 = *(v16 + 7);
    v28 = [v27 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (!v28)
    {
      goto LABEL_21;
    }

    v29 = *v53;
    while (1)
    {
      v30 = 0;
      do
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v52 + 1) + 8 * v30);
        if (!*(v31 + 16))
        {
          v32 = [v16 methodForSelector:-[BSObjCProperty _getSelector](*(*(&v52 + 1) + 8 * v30))];
          v33 = *(v31 + 16);
          *(v31 + 16) = v32;

          if (!*(v31 + 16))
          {
            v38 = *(v31 + 8);
            v39 = [(BSObjCProperty *)v31 _getSelector];
            v40 = [BSObjCMethod _propertyGetterForValue:v38 withSelector:v39];
            v37 = *(v31 + 16);
            *(v31 + 16) = v40;
            goto LABEL_14;
          }

          if ([*(v31 + 8) isBlock])
          {
            v34 = [*(v31 + 8) blockReturnValue];
            v35 = v34 == 0;

            if (v35)
            {
              v36 = [*(v31 + 16) returnValue];
              v37 = *(v31 + 8);
              *(v31 + 8) = v36;
LABEL_14:
            }
          }
        }

        v41 = [(BSObjCProperty *)v31 _setSelector];
        if (v41)
        {
          if (!*(v31 + 24))
          {
            v42 = [v16 methodForSelector:v41];
            v43 = *(v31 + 24);
            *(v31 + 24) = v42;

            if (!*(v31 + 24))
            {
              v44 = [BSObjCMethod _propertySetterForValue:v41 withSelector:?];
              v45 = *(v31 + 24);
              *(v31 + 24) = v44;
            }
          }
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [v27 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (!v28)
      {
LABEL_21:

        break;
      }
    }
  }

LABEL_22:

  return v16;
}

+ (id)protocolForProtocol:(id)a3
{
  v3 = [a1 protocolForProtocol:a3 interpreter:0];

  return v3;
}

+ (id)protocolForProtocol:(id)a3 interpreter:(id)a4
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v73 = a4;
  v71 = v6;
  if (!v6)
  {
    v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"protocol != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v66 = NSStringFromSelector(a2);
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      *buf = 138544642;
      v90 = v66;
      v91 = 2114;
      v92 = v68;
      v93 = 2048;
      v94 = a1;
      v95 = 2114;
      v96 = @"BSObjCRuntime.m";
      v97 = 1024;
      v98 = 1174;
      v99 = 2114;
      v100 = v65;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v69 = v65;
    qword_1EAD33B00 = [v65 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3FA20);
  }

  v72 = NSStringFromProtocol(v6);
  v7 = [MEMORY[0x1E695DF70] array];
  v74 = [MEMORY[0x1E695DF70] array];
  [BSObjCProtocol _gatherMethodMetadataForRequired:v71 onProtocol:v7 toMethods:v74 andErrors:?];
  [BSObjCProtocol _gatherMethodMetadataForRequired:v71 onProtocol:v7 toMethods:v74 andErrors:?];
  if (v73)
  {
    v8 = [v7 mutableCopy];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v9 = v7;
    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v83 objects:v88 count:16];
    v70 = v10 != 0;
    if (v10)
    {
      v11 = 0;
      v12 = *v84;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v84 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v83 + 1) + 8 * i);
          v15 = v73[2](v73, v14);
          if (!v15)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"newMethod != nil"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v18 = NSStringFromSelector(a2);
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              *buf = 138544642;
              v90 = v18;
              v91 = 2114;
              v92 = v20;
              v93 = 2048;
              v94 = a1;
              v95 = 2114;
              v96 = @"BSObjCRuntime.m";
              v97 = 1024;
              v98 = 1188;
              v99 = 2114;
              v100 = v17;
              _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v21 = v17;
            qword_1EAD33B00 = [v17 UTF8String];
            __break(0);
            JUMPOUT(0x18FF3F2D0);
          }

          v16 = [v14 selector];
          if (v16 != [v15 selector])
          {
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[method selector] == [newMethod selector]"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v23 = NSStringFromSelector(a2);
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              *buf = 138544642;
              v90 = v23;
              v91 = 2114;
              v92 = v25;
              v93 = 2048;
              v94 = a1;
              v95 = 2114;
              v96 = @"BSObjCRuntime.m";
              v97 = 1024;
              v98 = 1189;
              v99 = 2114;
              v100 = v22;
              _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v26 = v22;
            qword_1EAD33B00 = [v22 UTF8String];
            __break(0);
            JUMPOUT(0x18FF3F3E0);
          }

          if (v15 != v14)
          {
            [v8 replaceObjectAtIndex:objc_msgSend(obj withObject:{"indexOfObjectIdenticalTo:", v14), v15}];
            v11 = 1;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
      }

      while (v10);

      if ((v11 & 1) == 0)
      {
        v70 = 0;
        goto LABEL_25;
      }

      v9 = v8;
    }

    obj = v9;
LABEL_25:

    v7 = obj;
    goto LABEL_26;
  }

  v70 = 0;
LABEL_26:
  v78 = [MEMORY[0x1E695DFA8] set];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v27 = v7;
  obja = v27;
  v28 = [v27 countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (!v28)
  {
    goto LABEL_67;
  }

  v29 = *v80;
  do
  {
    v30 = 0;
    do
    {
      if (*v80 != v29)
      {
        objc_enumerationMutation(obja);
      }

      v31 = *(*(&v79 + 1) + 8 * v30);
      v32 = [v78 member:v31];
      v33 = v32;
      if (!v32)
      {
        [v78 addObject:v31];
        goto LABEL_61;
      }

      v34 = v32;
      if (!v31 || ![v31 isEqual:v34] || (v35 = *(v31 + 24), v36 = v34[3], v35 != v36) && (v35 ? (v37 = v36 == 0) : (v37 = 1), v37 || (-[__CFArray isEqualToString:](v35, "isEqualToString:") & 1) == 0) || (v38 = *(v31 + 16), v39 = v34[2], v38 != v39) && (v38 ? (v40 = v39 == 0) : (v40 = 1), v40 || !-[__CFArray isEqualToString:](v38, "isEqualToString:")))
      {
LABEL_56:

        goto LABEL_57;
      }

      v41 = *(v31 + 48);
      v42 = v34[6];
      if (v41)
      {
        if (!v42 || ![(BSObjCValue *)v41 _isIndistinguishableFromValue:v42])
        {
          goto LABEL_56;
        }
      }

      else if (v42)
      {
        goto LABEL_56;
      }

      if (!BSEqualArrays(*(v31 + 40), v34[5]))
      {
        goto LABEL_56;
      }

      v43 = 0;
      while (v43 < [*(v31 + 40) count])
      {
        v44 = [*(v31 + 40) objectAtIndex:v43];
        v45 = [(__CFArray *)v34[5] objectAtIndex:v43];
        v46 = [(BSObjCValue *)v44 _isIndistinguishableFromValue:v45];

        ++v43;
        if (!v46)
        {
          goto LABEL_56;
        }
      }

      v49 = *(v31 + 8) == v34[1];

      if (v49)
      {
        v48 = BSLogCommon();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          v90 = v72;
          v91 = 2114;
          v92 = v31;
          v93 = 2114;
          v94 = v34;
          _os_log_debug_impl(&dword_18FEF6000, v48, OS_LOG_TYPE_DEBUG, "BSObjCProtocol '%{public}@' : dropping duplicated method : method=%{public}@ existing=%{public}@", buf, 0x20u);
        }

        goto LABEL_60;
      }

LABEL_57:
      v47 = BSLogCommon();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v90 = v72;
        v91 = 2114;
        v92 = v31;
        v93 = 2114;
        v94 = v34;
        _os_log_fault_impl(&dword_18FEF6000, v47, OS_LOG_TYPE_FAULT, "BSObjCProtocol '%{public}@' : dropping distinguishable method due to selector collision : method=%{public}@ existing=%{public}@", buf, 0x20u);
      }

      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dropping distinguishable method due to selector collision : method=%@ existing=%@", v31, v34];
      [v74 addObject:v48];
LABEL_60:

LABEL_61:
      ++v30;
    }

    while (v30 != v28);
    v27 = obja;
    v50 = [obja countByEnumeratingWithState:&v79 objects:v87 count:16];
    v28 = v50;
  }

  while (v50);
LABEL_67:

  v51 = [BSObjCProtocol alloc];
  v52 = v71;
  objc_opt_self();
  v53 = [MEMORY[0x1E695DF70] array];
  *buf = 0;
  v54 = protocol_copyProtocolList(v52, buf);
  if (v54)
  {
    if (*buf)
    {
      v55 = 0;
      do
      {
        if (qword_1ED44FDE8 != -1)
        {
          dispatch_once(&qword_1ED44FDE8, &__block_literal_global_580);
        }

        v56 = v54[v55];
        if (v56 != qword_1ED44FDF0)
        {
          v57 = [BSObjCProtocol protocolForProtocol:v56];
          [v53 addObject:v57];
        }

        ++v55;
      }

      while (v55 < *buf);
    }

    free(v54);
  }

  v58 = [v78 allObjects];
  v59 = v52;
  objc_opt_self();
  v60 = [MEMORY[0x1E695DF70] array];
  v61 = [BSObjCProtocol _gatherPropertyMetadataForProtocol:v59 required:1];
  [v60 addObjectsFromArray:v61];

  v62 = [BSObjCProtocol _gatherPropertyMetadataForProtocol:v59 required:0];
  [v60 addObjectsFromArray:v62];

  v63 = [(BSObjCProtocol *)v51 _initWithName:v72 protocol:v59 parsingErrors:v74 inherited:v53 methods:v58 properties:v60 virtual:v70];

  return v63;
}

+ (void)_gatherMethodMetadataForRequired:(void *)a3 onProtocol:(void *)a4 toMethods:(void *)a5 andErrors:
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18 = a4;
  v19 = a5;
  objc_opt_self();
  outCount = 0;
  v9 = protocol_copyMethodDescriptionList(v8, a2, 1, &outCount);
  if (v9)
  {
    v17 = v9;
    if (outCount)
    {
      v10 = 0;
      p_name = &v9->name;
      do
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *p_name;
        MethodTypeEncoding = _protocol_getMethodTypeEncoding();
        if (!MethodTypeEncoding)
        {
          MethodTypeEncoding = protocol_getMethodDescription(v8, v13, a2, 1).types;
        }

        v20 = 0;
        v15 = [BSObjCMethod methodWithSelector:v13 typeEncoding:MethodTypeEncoding outParsingError:&v20];
        v16 = v20;
        if (v15)
        {
          v15[1] = a2;
          [v18 addObject:v15];
        }

        if (v16)
        {
          [v19 addObject:v16];
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
        p_name += 2;
      }

      while (v10 < outCount);
    }

    free(v17);
  }
}

- (id)methodForSelector:(SEL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_methods;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)propertyWithName:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_properties;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)inheritedProtocolForProtocol:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromProtocol(a3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_inheritedProtocols;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)flattenWithIgnoredInheritedProtocols:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_inheritedProtocols count])
  {
    v5 = [BSObjCProtocol alloc];
    name = self->_name;
    protocol = self->_protocol;
    parsingErrors = self->_parsingErrors;
    v9 = [(BSObjCProtocol *)self _unionMethodsIgnoringObjCProtocols:v4];
    v10 = [v9 allObjects];
    v11 = [(BSObjCProtocol *)self _unionPropertiesIgnoringObjCProtocols:v4];
    v12 = [v11 allObjects];
    v13 = [(BSObjCProtocol *)v5 _initWithName:protocol protocol:parsingErrors parsingErrors:0 inherited:v10 methods:v12 properties:self->_virtual virtual:?];
  }

  else
  {
    v13 = self;
  }

  return v13;
}

- (id)_unionMethodsIgnoringObjCProtocols:(void *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [a1 inheritedProtocols];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 protocol];
          v11 = [v3 containsObject:v10];

          if ((v11 & 1) == 0)
          {
            v12 = [(BSObjCProtocol *)v9 _unionMethodsIgnoringObjCProtocols:v3];
            [v4 unionSet:v12];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = [a1 methods];
    v15 = [v13 setWithArray:v14];

    [v4 minusSet:v15];
    [v4 unionSet:v15];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_unionPropertiesIgnoringObjCProtocols:(void *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [a1 inheritedProtocols];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 protocol];
          v11 = [v3 containsObject:v10];

          if ((v11 & 1) == 0)
          {
            v12 = [(BSObjCProtocol *)v9 _unionPropertiesIgnoringObjCProtocols:v3];
            [v4 unionSet:v12];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = [a1 properties];
    v15 = [v13 setWithArray:v14];

    [v4 minusSet:v15];
    [v4 unionSet:v15];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __53__BSObjCProtocol__gatherAdoptedProtocolsForProtocol___block_invoke()
{
  v0 = objc_getProtocol("NSObject");
  v1 = qword_1ED44FDF0;
  qword_1ED44FDF0 = v0;
}

+ (id)_gatherPropertyMetadataForProtocol:(_BOOL4)a3 required:
{
  v46 = *MEMORY[0x1E69E9840];
  proto = a2;
  objc_opt_self();
  v30 = [MEMORY[0x1E695DF70] array];
  outCount = 0;
  v32 = protocol_copyPropertyList2(proto, &outCount, a3, 1);
  if (v32)
  {
    if (outCount)
    {
      v4 = 0;
      v5 = @"optional --> required";
      isRequiredMethod = !a3;
      if (a3)
      {
        v5 = @"required --> optional";
      }

      v28 = v5;
      do
      {
        v6 = objc_autoreleasePoolPush();
        v7 = v32[v4];
        v8 = objc_opt_self();
        if (!v7)
        {
          v22 = v8;
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"aProperty != ((void *)0)"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v24 = NSStringFromSelector(sel_propertyWithProperty_required_);
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            *buf = 138544642;
            v35 = v24;
            v36 = 2114;
            v37 = v26;
            v38 = 2048;
            v39 = v22;
            v40 = 2114;
            v41 = @"BSObjCRuntime.m";
            v42 = 1024;
            v43 = 599;
            v44 = 2114;
            v45 = v23;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v27 = v23;
          qword_1EAD33B00 = [v23 UTF8String];
          __break(0);
          JUMPOUT(0x18FF40F38);
        }

        v9 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:property_getName(v7)];
        v10 = [MEMORY[0x1E695DF90] bsobjc_attributesForProperty:v7];
        v11 = v10;
        if (!a3)
        {
          [v10 setObject:&stru_1F03A1A98 forKey:@"?"];
        }

        v12 = v9;
        v13 = v11;
        v14 = objc_opt_self();
        v15 = [v13 objectForKey:@"T"];
        if ([v15 length])
        {
          v16 = [BSObjCValue _valueWithEncoding:v15];
          v17 = [(BSObjCProperty *)v14 propertyWithName:v12 value:v16 attributes:v13];
        }

        else
        {
          v16 = BSLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v35 = v12;
            _os_log_impl(&dword_18FEF6000, v16, OS_LOG_TYPE_DEFAULT, "Attributes for property %{public}@ contained no type information.", buf, 0xCu);
          }

          v17 = 0;
        }

        if (v17)
        {
          v18 = [(BSObjCProperty *)v17 _getSelector];
          if (!protocol_getMethodDescription(proto, v18, a3, 1).name && protocol_getMethodDescription(proto, v18, isRequiredMethod, 1).name)
          {
            v17[32] = isRequiredMethod;
            v19 = BSLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = [v17 name];
              *buf = 138412546;
              v35 = v20;
              v36 = 2112;
              v37 = v28;
              _os_log_debug_impl(&dword_18FEF6000, v19, OS_LOG_TYPE_DEBUG, "[rdar://100354962] Fixing incorrect property returned by protocol_copyPropertyList2() for %@: %@", buf, 0x16u);
            }
          }

          [v30 addObject:v17];
        }

        objc_autoreleasePoolPop(v6);
        ++v4;
      }

      while (v4 < outCount);
    }

    free(v32);
  }

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  inheritedProtocols = self->_inheritedProtocols;
  if (inheritedProtocols)
  {
    v5 = [(NSArray *)inheritedProtocols count]+ 117991;
  }

  else
  {
    v5 = 108109;
  }

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_18;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_virtual || v4->_virtual)
  {
    goto LABEL_5;
  }

  name = self->_name;
  v8 = v4->_name;
  if (name != v8)
  {
    v6 = 0;
    if (!name || !v8)
    {
      goto LABEL_19;
    }

    if (![(NSString *)name isEqualToString:?])
    {
      goto LABEL_5;
    }
  }

  inheritedProtocols = self->_inheritedProtocols;
  v10 = v4->_inheritedProtocols;
  if (inheritedProtocols != v10)
  {
    v6 = 0;
    if (!inheritedProtocols || !v10)
    {
      goto LABEL_19;
    }

    if (![(NSArray *)inheritedProtocols isEqual:?])
    {
LABEL_5:
      v6 = 0;
      goto LABEL_19;
    }
  }

  methods = self->_methods;
  v12 = v4->_methods;
  if (methods == v12)
  {
LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  v6 = 0;
  if (methods && v12)
  {
    v6 = [(NSArray *)methods isEqual:?];
  }

LABEL_19:

  return v6;
}

- (id)succinctDescription
{
  v2 = [(BSObjCProtocol *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name"];
  if (self->_virtual)
  {
    v5 = [v3 appendObject:@"VIRTUAL" withName:0];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSObjCProtocol *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BSObjCProtocol *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__BSObjCProtocol_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E72CACC0;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __56__BSObjCProtocol_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) methods];
  v3 = [v2 mutableCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [*(a1 + 32) properties];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 getter];
        [v3 removeObject:v9];

        v10 = [v8 setter];
        [v3 removeObject:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) properties];
  [v3 addObjectsFromArray:v11];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(a1 + 40) appendObject:*(*(&v19 + 1) + 8 * j) withName:{0, v19}];
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = *(a1 + 40);
  v18 = [*(a1 + 32) inheritedProtocols];
  [v17 appendArraySection:v18 withName:@"inheritedProtocols" skipIfEmpty:1];
}

@end
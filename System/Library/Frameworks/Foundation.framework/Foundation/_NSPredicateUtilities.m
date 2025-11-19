@interface _NSPredicateUtilities
+ (BOOL)_isReservedWordInParser:(id)a3;
+ (NSNumber)_convertStringToNumber:(uint64_t)a1;
+ (NSString)_parserableCollectionDescription:(uint64_t)a1;
+ (NSString)_parserableDateDescription:(uint64_t)a1;
+ (NSString)_parserableStringDescription:(uint64_t)a1;
+ (id)_compoundPredicateClassesForSecureCoding;
+ (id)_constantValueClassesForSecureCoding;
+ (id)_expressionClassesForSecureCoding;
+ (id)_extendedExpressionClassesForSecureCoding;
+ (id)_operatorClassesForSecureCoding;
+ (id)_predicateClassesForSecureCoding;
+ (id)abs:(id)a3;
+ (id)add:(id)a3 to:(id)a4;
+ (id)average:(id)a3;
+ (id)bitwiseAnd:(id)a3 with:(id)a4;
+ (id)bitwiseOr:(id)a3 with:(id)a4;
+ (id)bitwiseXor:(id)a3 with:(id)a4;
+ (id)canonical:(id)a3;
+ (id)castObject:(id)a3 toType:(id)a4;
+ (id)ceiling:(id)a3;
+ (id)count:(id)a3;
+ (id)distanceToLocation:(id)a3 fromLocation:(id)a4;
+ (id)divide:(id)a3 by:(id)a4;
+ (id)exp:(id)a3;
+ (id)floor:(id)a3;
+ (id)from:(id)a3 subtract:(id)a4;
+ (id)groupConcat:(id)a3 separator:(id)a4;
+ (id)leftshift:(id)a3 by:(id)a4;
+ (id)length:(id)a3;
+ (id)ln:(id)a3;
+ (id)log:(id)a3;
+ (id)lowercase:(id)a3;
+ (id)max:(id)a3;
+ (id)median:(id)a3;
+ (id)min:(id)a3;
+ (id)mode:(id)a3;
+ (id)modulus:(id)a3 by:(id)a4;
+ (id)multiply:(id)a3 by:(id)a4;
+ (id)objectFrom:(id)a3 withIndex:(id)a4;
+ (id)onesComplement:(id)a3;
+ (id)raise:(id)a3 toPower:(id)a4;
+ (id)random;
+ (id)randomn:(id)a3;
+ (id)rightshift:(id)a3 by:(id)a4;
+ (id)sqrt:(id)a3;
+ (id)stddev:(id)a3;
+ (id)sum:(id)a3;
+ (id)tokenize:(id)a3 using:(id)a4;
+ (id)trunc:(id)a3;
+ (id)uppercase:(id)a3;
+ (uint64_t)_getCommonTypeFor:(uint64_t)a1;
+ (uint64_t)_getITypeFor:(uint64_t)a1;
+ (uint64_t)_predicateEnforceRestrictionsOnKeyPath:(uint64_t)a3 withOperand:(uint64_t)a4 forComponentName:;
+ (uint64_t)_predicateEnforceRestrictionsOnSelector:(uint64_t)a3 withOperand:(BOOL *)a4 isKVC:(uint64_t)a5 forComponentName:;
+ (uint64_t)_predicateEnforceRestrictionsOnTarget:(uint64_t)a3 forComponentName:;
+ (uint64_t)_predicateSecurityAction;
+ (void)_collapseAndTokenize:(uint64_t)a3 flags:(void *)a4 locale:;
+ (void)_doTokenization:(const __CFLocale *)a3 locale:;
+ (void)_processAndTokenize:(uint64_t)a3 flags:(const __CFLocale *)a4 locale:;
+ (void)initialize;
@end

@implementation _NSPredicateUtilities

+ (void)initialize
{
  if (_NSPredicateUtilities == a1 && _NSCoderGetTrustRestrictions() != 2)
  {
    v2 = _CFPredicatePolicyData_getFlags() | 8;

    MEMORY[0x1EEDB83B0](v2);
  }
}

+ (id)_extendedExpressionClassesForSecureCoding
{
  if (qword_1ED43FD20 != -1)
  {
    dispatch_once(&qword_1ED43FD20, &__block_literal_global_223);
  }

  return qword_1ED43FD18;
}

+ (id)_operatorClassesForSecureCoding
{
  if (qword_1ED43FD30 != -1)
  {
    dispatch_once(&qword_1ED43FD30, &__block_literal_global_225);
  }

  return qword_1ED43FD28;
}

+ (id)_compoundPredicateClassesForSecureCoding
{
  if (qword_1ED43FD00 != -1)
  {
    dispatch_once(&qword_1ED43FD00, &__block_literal_global_206);
  }

  return qword_1ED43FCF8;
}

+ (id)_expressionClassesForSecureCoding
{
  if (qword_1ED43FD10 != -1)
  {
    dispatch_once(&qword_1ED43FD10, &__block_literal_global_208);
  }

  return qword_1ED43FD08;
}

+ (id)_constantValueClassesForSecureCoding
{
  if (qword_1ED43FD40 != -1)
  {
    dispatch_once(&qword_1ED43FD40, &__block_literal_global_238);
  }

  return qword_1ED43FD38;
}

+ (uint64_t)_predicateSecurityAction
{
  objc_opt_self();
  objc_opt_self();
  result = _CFPredicatePolicyData_getFlags();
  if ((result & 8) != 0 || (result = dyld_program_sdk_at_least(), result))
  {
    __break(0xB002u);
  }

  return result;
}

+ (uint64_t)_predicateEnforceRestrictionsOnTarget:(uint64_t)a3 forComponentName:
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  if (object_isClass(a2))
  {
    v5 = [[NSString alloc] initWithUTF8String:class_getName(a2)];
    v6 = a2;
    goto LABEL_7;
  }

  Class = object_getClass(a2);
  if (object_isClass(Class))
  {
    v5 = [[NSString alloc] initWithUTF8String:object_getClassName(a2)];
    v6 = object_getClass(a2);
LABEL_7:
    Superclass = class_getSuperclass(v6);
    if (Superclass)
    {
      Superclass = [[NSString alloc] initWithUTF8String:class_getName(Superclass)];
    }

    objc_opt_self();
    if ([_CFPredicatePolicyRestrictedClasses() objectForKey:v5])
    {
      objc_opt_self();
      if (![*(_CFPredicatePolicyData() + 8) objectForKey:v5])
      {
LABEL_17:
        objc_opt_self();
        v12 = _NSOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v14 = 138412546;
          v15 = a3;
          v16 = 2114;
          v17 = v5;
          _os_log_fault_impl(&dword_18075C000, v12, OS_LOG_TYPE_FAULT, "NSPredicate: Use of %@ with instance of '%{public}@' is forbidden.", &v14, 0x16u);
        }

        v7 = 1;
        goto LABEL_25;
      }

      objc_opt_self();
      Flags = _CFPredicatePolicyData_getFlags();
      v11 = (Flags >> 3) & 1;
      if ((Flags >> 3))
      {
        goto LABEL_16;
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (Superclass)
    {
      objc_opt_self();
      if (![*(_CFPredicatePolicyData() + 16) objectForKey:v5])
      {
        objc_opt_self();
        if ([_CFPredicatePolicyRestrictedClasses() objectForKey:Superclass])
        {
          objc_opt_self();
          if (![*(_CFPredicatePolicyData() + 8) objectForKey:Superclass])
          {
            goto LABEL_17;
          }

          objc_opt_self();
          if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_24;
      }
    }

LABEL_16:
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_24:
    v7 = 0;
LABEL_25:

    return v7;
  }

  return 1;
}

+ (uint64_t)_predicateEnforceRestrictionsOnSelector:(uint64_t)a3 withOperand:(BOOL *)a4 isKVC:(uint64_t)a5 forComponentName:
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = NSStringFromSelector(a2);
  objc_opt_self();
  v10 = [*(_CFPredicatePolicyData() + 32) objectForKey:v9];
  if (v10 || (objc_opt_self(), ![_CFPredicatePolicyRestrictedSelectors() objectForKey:v9]) && ((objc_opt_self(), (_CFPredicatePolicyData_getFlags() & 8) == 0) || (objc_opt_class(), (objc_opt_respondsToSelector() & 1) == 0) || (objc_opt_self(), objc_msgSend(*(_CFPredicatePolicyData() + 24), "objectForKey:", v9))) || (objc_opt_self(), objc_msgSend(*(_CFPredicatePolicyData() + 40), "objectForKey:", v9)) && (objc_opt_self(), (_CFPredicatePolicyData_getFlags() & 8) == 0) || (v12 = -[NSString isEqualToString:](v9, "isEqualToString:", @"class"), a3) && v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    result = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_3;
  }

  objc_opt_self();
  v13 = _NSOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v14 = 138412546;
    v15 = a5;
    v16 = 2114;
    v17 = v9;
    _os_log_fault_impl(&dword_18075C000, v13, OS_LOG_TYPE_FAULT, "NSPredicate: %@ with selector '%{public}@' is forbidden.", &v14, 0x16u);
  }

  result = 1;
  if (a4)
  {
LABEL_3:
    *a4 = v10 != 0;
  }

  return result;
}

+ (uint64_t)_predicateEnforceRestrictionsOnKeyPath:(uint64_t)a3 withOperand:(uint64_t)a4 forComponentName:
{
  v33 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 componentsSeparatedByString:@"."];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    context = v6;
    v11 = 0;
    v12 = *v30;
    while (2)
    {
      v13 = 0;
      v14 = -v11;
      v26 = v11 + v10;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v29 + 1) + 8 * v13);
        v16 = [(NSString *)v15 hasPrefix:@"@"];
        v17 = v15;
        if (v16)
        {
          v18 = [(NSString *)v15 length];
          v17 = v15;
          if (v18 >= 2)
          {
            v17 = [(NSString *)v15 substringFromIndex:1];
          }
        }

        v19 = NSSelectorFromString(v17);
        if (v19)
        {
          v20 = [_NSPredicateUtilities _predicateEnforceRestrictionsOnSelector:v19 withOperand:a3 isKVC:0 forComponentName:a4];
          v21 = v20;
          if (v14 == v13)
          {
            v22 = 1;
          }

          else
          {
            v22 = v20;
          }

          if (((v22 | v7) & 1) != 0 || ![(NSString *)v15 isEqualToString:@"class"])
          {
            if (v21)
            {
LABEL_24:
              v23 = 1;
              goto LABEL_25;
            }
          }

          else
          {
            objc_opt_self();
            if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
            {
              goto LABEL_24;
            }
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v28 count:16];
      v11 = v26;
      if (v10)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_25:
    v6 = context;
  }

  else
  {
    v23 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v23;
}

+ (uint64_t)_getITypeFor:(uint64_t)a1
{
  objc_opt_self();
  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = *a2 - 73;
  if (v3 > 0x2A)
  {
    goto LABEL_9;
  }

  if (((1 << (*a2 - 73)) & 0x50900000409) != 0)
  {
    return 2;
  }

  if (((1 << (*a2 - 73)) & 0x28000000) != 0)
  {
    return 0;
  }

  if (v3 != 8)
  {
LABEL_9:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unknown number type or nil passed to arithmetic function expression." userInfo:0]);
  }

  return 1;
}

+ (uint64_t)_getCommonTypeFor:(uint64_t)a1
{
  v25[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    v13 = 0;
    goto LABEL_23;
  }

  if (![a2 count] || (_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0)
  {
    v24 = @"collection";
    v25[0] = a2;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
LABEL_23:
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v14 = @"Invoked mathematical function with bad collection parameter.";
LABEL_20:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v14 userInfo:v13]);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v6 = 3;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ((_NSIsNSNumber() & 1) == 0)
        {
          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
          v17 = @"collection";
          v18 = a2;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
          v14 = @"Invoked mathematical function with non-numeric object(s) in collection.";
          v15 = v11;
          v16 = v12;
          goto LABEL_20;
        }

        v9 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [v8 objCType]);
        if (v9 < v6)
        {
          v6 = v9;
        }
      }

      v4 = [a2 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (!v4)
      {
        return v6;
      }
    }
  }

  return 3;
}

+ (id)sum:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (((_NSIsNSArray() & 1) != 0 || (_NSIsNSSet() & 1) != 0 || _NSIsNSOrderedSet()) && ![a3 count])
  {

    return [NSNumber numberWithInteger:0];
  }

  else
  {
    v4 = [_NSPredicateUtilities _getCommonTypeFor:a3];
    if (v4 == 1)
    {
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v12 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v29;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(a3);
            }

            v14 += [*(*(&v28 + 1) + 8 * i) unsignedLongLongValue];
          }

          v13 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      return [NSNumber numberWithUnsignedLongLong:v14];
    }

    else if (v4)
    {
      v25 = 0uLL;
      v26 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v17 = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v24;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(a3);
            }

            v19 += [*(*(&v23 + 1) + 8 * j) longLongValue];
          }

          v18 = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      return [NSNumber numberWithLongLong:v19];
    }

    else
    {
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v5 = [a3 countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v34;
        v8 = 0.0;
        do
        {
          for (k = 0; k != v6; ++k)
          {
            if (*v34 != v7)
            {
              objc_enumerationMutation(a3);
            }

            [*(*(&v33 + 1) + 8 * k) doubleValue];
            v8 = v8 + v10;
          }

          v6 = [a3 countByEnumeratingWithState:&v33 objects:v32 count:16];
        }

        while (v6);
      }

      else
      {
        v8 = 0.0;
      }

      return [NSNumber numberWithDouble:v8];
    }
  }
}

+ (id)count:(id)a3
{
  if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invoked count with non-collection parameter." userInfo:0]);
  }

  v4 = [a3 count];

  return [NSNumber numberWithInteger:v4];
}

+ (id)min:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invoked min with empty collection." userInfo:0]);
  }

  v4 = [_NSPredicateUtilities _getCommonTypeFor:a3];
  if (_NSIsNSArray())
  {
    v5 = [a3 lastObject];
  }

  else
  {
    v5 = [a3 anyObject];
  }

  if (v4 == 1)
  {
    v16 = [v5 unsignedLongLongValue];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(a3);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          if ([v21 unsignedLongLongValue] < v16)
          {
            v16 = [v21 unsignedLongLongValue];
          }
        }

        v18 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v18);
    }

    return [NSNumber numberWithUnsignedLongLong:v16];
  }

  else if (v4)
  {
    v22 = [v5 longLongValue];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [a3 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(a3);
          }

          v27 = *(*(&v29 + 1) + 8 * j);
          if ([v27 longLongValue] < v22)
          {
            v22 = [v27 longLongValue];
          }
        }

        v24 = [a3 countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v24);
    }

    return [NSNumber numberWithLongLong:v22];
  }

  else
  {
    [v5 doubleValue];
    v7 = v6;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      do
      {
        for (k = 0; k != v9; ++k)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v39 + 1) + 8 * k);
          [v12 doubleValue];
          if (v13 < v7)
          {
            [v12 doubleValue];
            v7 = v14;
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v9);
    }

    return [NSNumber numberWithDouble:v7];
  }
}

+ (id)max:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invoked max with empty collection." userInfo:0]);
  }

  v4 = [_NSPredicateUtilities _getCommonTypeFor:a3];
  if (_NSIsNSArray())
  {
    v5 = [a3 lastObject];
  }

  else
  {
    v5 = [a3 anyObject];
  }

  if (v4 == 1)
  {
    v16 = [v5 unsignedLongLongValue];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(a3);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          if ([v21 unsignedLongLongValue] > v16)
          {
            v16 = [v21 unsignedLongLongValue];
          }
        }

        v18 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v18);
    }

    return [NSNumber numberWithUnsignedLongLong:v16];
  }

  else if (v4)
  {
    v22 = [v5 longLongValue];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [a3 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(a3);
          }

          v27 = *(*(&v29 + 1) + 8 * j);
          if ([v27 longLongValue] > v22)
          {
            v22 = [v27 longLongValue];
          }
        }

        v24 = [a3 countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v24);
    }

    return [NSNumber numberWithLongLong:v22];
  }

  else
  {
    [v5 doubleValue];
    v7 = v6;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      do
      {
        for (k = 0; k != v9; ++k)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v39 + 1) + 8 * k);
          [v12 doubleValue];
          if (v13 > v7)
          {
            [v12 doubleValue];
            v7 = v14;
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v9);
    }

    return [NSNumber numberWithDouble:v7];
  }
}

+ (id)average:(id)a3
{
  v4 = [a1 sum:?];
  v5 = [_NSPredicateUtilities _getCommonTypeFor:a3];
  if (v5 == 1)
  {
    v7 = [v4 unsignedLongLongValue];
  }

  else if (v5)
  {
    v7 = [v4 longLongValue];
  }

  else
  {
    [v4 doubleValue];
    v7 = v6;
  }

  v8 = v7 / [a3 count];

  return [NSNumber numberWithDouble:v8];
}

+ (id)median:(id)a3
{
  v3 = [a3 sortedArrayUsingSelector:sel_compare_];
  v4 = [v3 count];
  v5 = [v3 count] >> 1;
  if (v4)
  {

    return [v3 objectAtIndex:v5];
  }

  else
  {
    v6 = [v3 objectAtIndex:v5 - 1];
    v7 = [v3 objectAtIndex:{objc_msgSend(v3, "count") >> 1}];
    v8 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [v6 objCType]);
    v9 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [v7 objCType]);
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    if (v10 == 1)
    {
      v16 = [v6 unsignedLongLongValue];
      v17 = ([v7 unsignedLongLongValue] + v16) >> 1;

      return [NSNumber numberWithUnsignedLongLong:v17];
    }

    else if (v10)
    {
      v18 = [v6 longLongValue];
      v19 = ([v7 longLongValue] + v18) / 2;

      return [NSNumber numberWithLongLong:v19];
    }

    else
    {
      [v6 doubleValue];
      v12 = v11;
      [v7 doubleValue];
      v14 = (v12 + v13) * 0.5;

      return [NSNumber numberWithDouble:v14];
    }
  }
}

+ (id)mode:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [_NSPredicateUtilities _getCommonTypeFor:a3];
  v5 = [a3 sortedArrayUsingSelector:sel_compare_];
  v6 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v14 = v9;
        if (*v23 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (![v6 count])
        {
          ++v10;
          [v6 addObject:v9];
          continue;
        }

        if (v4 == 1)
        {
          v18 = [v14 unsignedLongLongValue];
          v19 = [v9 unsignedLongLongValue];
        }

        else
        {
          if (!v4)
          {
            [v14 doubleValue];
            v16 = v15;
            [v9 doubleValue];
            if (v16 != v17)
            {
              goto LABEL_16;
            }

            goto LABEL_10;
          }

          v18 = [v14 longLongValue];
          v19 = [v9 longLongValue];
        }

        if (v18 != v19)
        {
LABEL_16:
          v10 = 1;
          continue;
        }

LABEL_10:
        if (++v10 <= v11)
        {
          if (v10 == v11)
          {
            [v6 addObject:v9];
            v10 = v11;
          }
        }

        else
        {
          v6 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
          v11 = v10;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)stddev:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a1 "average:"doubleValue"")];
  v5 = v4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v14 + 1) + 8 * i) doubleValue];
        v9 = v9 + (v5 - v11) * (v5 - v11);
      }

      v7 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", sqrt(v9 / [a3 count]));
}

+ (id)add:(id)a3 to:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = _NSIsNSDate();
  v7 = _NSIsNSNumber();
  v8 = _NSIsNSDate();
  v9 = _NSIsNSNumber();
  if (v7 && v9)
  {
    v10 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a3 objCType]);
    v11 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a4 objCType]);
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v12 == 1)
    {
      v24 = [a3 unsignedLongLongValue];
      v25 = [a4 unsignedLongLongValue] + v24;

      return [NSNumber numberWithUnsignedLongLong:v25];
    }

    else if (v12)
    {
      v26 = [a3 longLongValue];
      v27 = [a4 longLongValue] + v26;

      return [NSNumber numberWithLongLong:v27];
    }

    else
    {
      [a3 doubleValue];
      v14 = v13;
      [a4 doubleValue];
      v16 = v14 + v15;

      return [NSNumber numberWithDouble:v16];
    }
  }

  else
  {
    if ((v6 & v9) == 1)
    {
      v18 = MEMORY[0x1E695DF00];
      [a3 timeIntervalSinceReferenceDate];
      v20 = v19;
      [a4 doubleValue];
    }

    else
    {
      if ((v7 & v8) != 1)
      {
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30[1] = a3;
        v31 = @"Parameters";
        v30[0] = a4;
        v32[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
        objc_exception_throw([v28 exceptionWithName:v29 reason:@"incompatible parameters passed to mathematical function" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v32, &v31, 1)}]);
      }

      v18 = MEMORY[0x1E695DF00];
      [a3 doubleValue];
      v20 = v22;
      [a4 timeIntervalSinceReferenceDate];
    }

    v23 = v20 + v21;

    return [v18 dateWithTimeIntervalSinceReferenceDate:v23];
  }
}

+ (id)from:(id)a3 subtract:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = _NSIsNSDate();
  v7 = _NSIsNSNumber();
  v8 = _NSIsNSDate();
  v9 = _NSIsNSNumber();
  if (v7 && v9)
  {
    v10 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a3 objCType]);
    v11 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a4 objCType]);
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v12 == 1)
    {
      v24 = [a3 unsignedLongLongValue];
      v25 = v24 - [a4 unsignedLongLongValue];

      return [NSNumber numberWithUnsignedLongLong:v25];
    }

    else
    {
      if (!v12)
      {
        [a3 doubleValue];
        v14 = v13;
        [a4 doubleValue];
LABEL_11:
        v17 = v14 - v15;

        return [NSNumber numberWithDouble:v17];
      }

      v26 = [a3 longLongValue];
      v27 = v26 - [a4 longLongValue];

      return [NSNumber numberWithLongLong:v27];
    }
  }

  else
  {
    if ((v6 & v8) == 1)
    {
      [a3 timeIntervalSinceReferenceDate];
      v14 = v16;
      [a4 timeIntervalSinceReferenceDate];
      goto LABEL_11;
    }

    if ((v6 & v9) != 1)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30[1] = a3;
      v31 = @"Parameters";
      v30[0] = a4;
      v32[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      objc_exception_throw([v28 exceptionWithName:v29 reason:@"incompatible parameters passed to mathematical function" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v32, &v31, 1)}]);
    }

    v19 = MEMORY[0x1E695DF00];
    [a3 timeIntervalSinceReferenceDate];
    v21 = v20;
    [a4 doubleValue];
    v23 = v21 - v22;

    return [v19 dateWithTimeIntervalSinceReferenceDate:v23];
  }
}

+ (id)multiply:(id)a3 by:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20[1] = a4;
    v21 = @"Parameters";
    v20[0] = a3;
    v22[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    objc_exception_throw([v18 exceptionWithName:v19 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)}]);
  }

  v6 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a3 objCType]);
  v7 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a4 objCType]);
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 == 1)
  {
    v14 = [a3 unsignedLongLongValue];
    v15 = [a4 unsignedLongLongValue] * v14;

    return [NSNumber numberWithUnsignedLongLong:v15];
  }

  else if (v8)
  {
    v16 = [a3 longLongValue];
    v17 = [a4 longLongValue] * v16;

    return [NSNumber numberWithLongLong:v17];
  }

  else
  {
    [a3 doubleValue];
    v10 = v9;
    [a4 doubleValue];
    v12 = v10 * v11;

    return [NSNumber numberWithDouble:v12];
  }
}

+ (id)divide:(id)a3 by:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22[1] = a4;
    v23 = @"Parameters";
    v22[0] = a3;
    v24[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    objc_exception_throw([v20 exceptionWithName:v21 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1)}]);
  }

  v6 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a3 objCType]);
  v7 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a4 objCType]);
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 == 1)
  {
    v14 = [a3 unsignedLongLongValue];
    v15 = [a4 unsignedLongLongValue];
    if (v15)
    {
      v16 = v14 / v15;
    }

    else
    {
      v16 = 0;
    }

    return [NSNumber numberWithUnsignedLongLong:v16];
  }

  else if (v8)
  {
    v17 = [a3 longLongValue];
    v18 = [a4 longLongValue];
    if (v18)
    {
      v19 = v17 / v18;
    }

    else
    {
      v19 = 0;
    }

    return [NSNumber numberWithLongLong:v19];
  }

  else
  {
    [a3 doubleValue];
    v10 = v9;
    [a4 doubleValue];
    v12 = v10 / v11;

    return [NSNumber numberWithDouble:v12];
  }
}

+ (id)modulus:(id)a3 by:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22[1] = a4;
    v23 = @"Parameters";
    v22[0] = a3;
    v24[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    objc_exception_throw([v20 exceptionWithName:v21 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1)}]);
  }

  v6 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a3 objCType]);
  v7 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a4 objCType]);
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 == 1)
  {
    v14 = [a3 unsignedLongLongValue];
    v15 = [a4 unsignedLongLongValue];
    if (v15)
    {
      v16 = v14 % v15;
    }

    else
    {
      v16 = 0;
    }

    return [NSNumber numberWithUnsignedLongLong:v16];
  }

  else if (v8)
  {
    v17 = [a3 longLongValue];
    v18 = [a4 longLongValue];
    if (v18)
    {
      v19 = v17 % v18;
    }

    else
    {
      v19 = 0;
    }

    return [NSNumber numberWithLongLong:v19];
  }

  else
  {
    [a3 doubleValue];
    v10 = v9;
    [a4 doubleValue];
    v12 = fmod(v10, v11);

    return [NSNumber numberWithDouble:v12];
  }
}

+ (id)sqrt:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = a3;
    v10 = @"Parameters";
    v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  [a3 doubleValue];
  v5 = sqrt(v4);

  return [NSNumber numberWithDouble:v5];
}

+ (id)log:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = a3;
    v10 = @"Parameters";
    v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  [a3 doubleValue];
  v5 = log10(v4);

  return [NSNumber numberWithDouble:v5];
}

+ (id)ln:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = a3;
    v10 = @"Parameters";
    v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  [a3 doubleValue];
  v5 = log(v4);

  return [NSNumber numberWithDouble:v5];
}

+ (id)raise:(id)a3 toPower:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = a3;
    v14 = @"Parameters";
    v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    objc_exception_throw([v11 exceptionWithName:v12 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}]);
  }

  [a3 doubleValue];
  v7 = v6;
  [a4 doubleValue];
  v9 = pow(v7, v8);

  return [NSNumber numberWithDouble:v9];
}

+ (id)exp:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = a3;
    v10 = @"Parameters";
    v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  [a3 doubleValue];
  v5 = exp(v4);

  return [NSNumber numberWithDouble:v5];
}

+ (id)floor:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = a3;
    v10 = @"Parameters";
    v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  [a3 doubleValue];
  v5 = floor(v4);

  return [NSNumber numberWithDouble:v5];
}

+ (id)ceiling:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = a3;
    v10 = @"Parameters";
    v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  [a3 doubleValue];
  v5 = ceil(v4);

  return [NSNumber numberWithDouble:v5];
}

+ (id)abs:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = a3;
    v12 = @"Parameters";
    v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    objc_exception_throw([v9 exceptionWithName:v10 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
  }

  v4 = +[_NSPredicateUtilities _getITypeFor:](_NSPredicateUtilities, [a3 objCType]);
  if (v4 == 1)
  {
    return a3;
  }

  if (v4 == 2)
  {
    v5 = [a3 longLongValue];
    if ((v5 & 0x8000000000000000) == 0)
    {
      return a3;
    }

    return [NSNumber numberWithLongLong:-v5];
  }

  else
  {
    [a3 doubleValue];
    v8 = fabs(v7);

    return [NSNumber numberWithDouble:v8];
  }
}

+ (id)trunc:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = a3;
    v10 = @"Parameters";
    v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"mathematical functions require NSNumber parameters" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  [a3 doubleValue];
  v5 = trunc(v4);

  return [NSNumber numberWithDouble:v5];
}

+ (void)_doTokenization:(const __CFLocale *)a3 locale:
{
  v5 = a3 == 0;
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v16.length = [(__CFString *)a2 length];
  v16.location = 0;
  v6 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], a2, v16, 4 * v5, a3);
  Token = CFStringTokenizerAdvanceToNextToken(v6);
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  if (Token)
  {
    v10 = v9;
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
      if (CurrentTokenRange.location != -1)
      {
        v12 = [(__CFString *)a2 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
        v14 = 0;
        [v12 getCharacters:&v14 range:{0, 1}];
        if (![(NSCharacterSet *)v10 characterIsMember:v14])
        {
          [v8 addObject:v12];
        }
      }
    }

    while (CFStringTokenizerAdvanceToNextToken(v6));
  }

  CFRelease(v6);
  return v8;
}

+ (void)_processAndTokenize:(uint64_t)a3 flags:(const __CFLocale *)a4 locale:
{
  objc_opt_self();
  if (a3)
  {
    v7 = [_NSPredicateOperatorUtilities newStringFrom:a2 usingUnicodeTransforms:a3];
    v8 = [_NSPredicateUtilities _doTokenization:v7 locale:a4];

    return v8;
  }

  else
  {

    return [_NSPredicateUtilities _doTokenization:a2 locale:a4];
  }
}

+ (void)_collapseAndTokenize:(uint64_t)a3 flags:(void *)a4 locale:
{
  v20 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(a2);
      }

      v12 = *(*(&v16 + 1) + 8 * i);
      if (!_NSIsNSString())
      {

        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unable to tokenize : %@", v12), 0}]);
      }

      v13 = [_NSPredicateUtilities _processAndTokenize:v12 flags:a3 locale:a4];
      if (v9)
      {
        [v9 unionSet:v13];
      }

      else
      {
        v9 = v13;
      }
    }

    v8 = [a2 countByEnumeratingWithState:&v16 objects:v15 count:16];
  }

  while (v8);
  return v9;
}

+ (id)tokenize:(id)a3 using:(id)a4
{
  if ([a4 rangeOfString:@"n"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a4, "rangeOfString:", @"N") != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if ([a4 rangeOfString:@"c"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a4, "rangeOfString:", @"C") == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([a4 rangeOfString:@"d"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a4, "rangeOfString:", @"D") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([a4 rangeOfString:@"l"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a4, "rangeOfString:", @"L") != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = +[_NSPredicateOperatorUtilities retainedLocale];
        goto LABEL_10;
      }

LABEL_9:
      v6 = 0;
LABEL_10:
      v7 = 0;
      goto LABEL_11;
    }

    v6 = 0;
    v7 = 2;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

LABEL_11:
  if (_NSIsNSString())
  {
    v8 = [_NSPredicateUtilities _processAndTokenize:a3 flags:v7 locale:v6];
  }

  else
  {
    if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && !_NSIsNSOrderedSet())
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unable to tokenize : %@", a3), 0}]);
    }

    v8 = [_NSPredicateUtilities _collapseAndTokenize:a3 flags:v7 locale:v6];
  }

  v9 = v8;

  return v9;
}

+ (id)uppercase:(id)a3
{
  if ((_NSIsNSString() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't uppercase non-string" userInfo:0]);
  }

  return [a3 uppercaseString];
}

+ (id)lowercase:(id)a3
{
  if ((_NSIsNSString() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't lowercase non-string" userInfo:0]);
  }

  return [a3 lowercaseString];
}

+ (id)length:(id)a3
{
  if ((_NSIsNSString() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't apply length: to a non-string" userInfo:0]);
  }

  v4 = [a3 length];

  return [NSNumber numberWithUnsignedInteger:v4];
}

+ (NSNumber)_convertStringToNumber:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 UTF8String];
  v8 = 0;
  if (strchr(v3, 46))
  {
    v4 = strtod_l(v3, &v8, 0);
    if (!v8 || v8 == v3 || *v8 || (result = [NSNumber numberWithDouble:v4]) == 0)
    {
LABEL_10:
      v7 = [NSDecimalNumber decimalNumberWithString:a2, v4, v8, v9];
      if ([(NSDecimalNumber *)v7 isEqual:+[NSDecimalNumber notANumber]])
      {
        return 0;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    v6 = strtoll_l(v3, &v8, 0, 0);
    if (!v8)
    {
      goto LABEL_10;
    }

    if (v8 == v3)
    {
      goto LABEL_10;
    }

    if (*v8)
    {
      goto LABEL_10;
    }

    result = [NSNumber numberWithLongLong:v6];
    if (!result)
    {
      goto LABEL_10;
    }
  }

  return result;
}

+ (id)castObject:(id)a3 toType:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return a3;
  }

  if (![@"Class" isEqualToString:a4])
  {
    if ([a4 isNSString])
    {
      v11 = [a4 description];
      objc_opt_self();
      if (![*(_CFPredicatePolicyData() + 16) objectForKey:v11])
      {
        objc_opt_self();
        v12 = _NSOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543874;
          v31 = a4;
          v32 = 2114;
          v33 = a3;
          v34 = 2114;
          v35 = a4;
          _os_log_fault_impl(&dword_18075C000, v12, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSExpression CAST(x,'%{public}@') is deprecated and will be removed in a future release.  '%{public}@' should not be cast into the unknown type '%{public}@'", buf, 0x20u);
        }

        objc_opt_self();
        if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
        {
          +[_NSPredicateUtilities _predicateSecurityAction];
        }
      }

      v13 = NSClassFromString(v11);
      if (v13)
      {
        v14 = v13;
        if ([(objc_class *)v13 isSubclassOfClass:__NSStringClass])
        {
          return [a3 description];
        }

        if ([(objc_class *)v14 isSubclassOfClass:objc_opt_self()])
        {
          if (_NSIsNSNumber())
          {
            v16 = MEMORY[0x1E695DF00];
            [a3 doubleValue];
            return [v16 dateWithTimeIntervalSinceReferenceDate:?];
          }

          if (_NSIsNSString())
          {
            return [MEMORY[0x1E695DF00] dateWithNaturalLanguageString:a3];
          }

          if (_NSIsNSDate())
          {
            return a3;
          }
        }

        else
        {
          if ([(objc_class *)v14 isSubclassOfClass:objc_opt_self()])
          {
            v7 = +[NSDecimalNumber decimalNumberWithString:](NSDecimalNumber, "decimalNumberWithString:", [a3 description]);
            if (![(NSDecimalNumber *)v7 isEqual:+[NSDecimalNumber notANumber]])
            {
              return v7;
            }

            goto LABEL_51;
          }

          if (![(objc_class *)v14 isSubclassOfClass:objc_opt_self()])
          {
            if ([(objc_class *)v14 isSubclassOfClass:objc_opt_self()])
            {
              v18 = -[NSSymbolicExpression initWithString:]([NSSymbolicExpression alloc], "initWithString:", [a3 description]);
            }

            else
            {
              if (!class_respondsToSelector(v14, sel_initWithString_))
              {
                goto LABEL_51;
              }

              objc_opt_self();
              v19 = _NSOSLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543874;
                v31 = a4;
                v32 = 2114;
                v33 = a3;
                v34 = 2114;
                v35 = a4;
                _os_log_fault_impl(&dword_18075C000, v19, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSExpression CAST(x,'%{public}@') is deprecated and will be removed in a future release.  '%{public}@' should not be cast into type '%{public}@' through initWithString", buf, 0x20u);
              }

              objc_opt_self();
              if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
              {
                +[_NSPredicateUtilities _predicateSecurityAction];
              }

              v20 = NSAllocateObject(v14, 0, 0);
              -[NSSymbolicExpression initWithString:](v20, "initWithString:", [a3 description]);
              v18 = v20;
            }

            return v18;
          }

          if (_NSIsNSDate())
          {
            [a3 timeIntervalSinceReferenceDate];
            return [NSNumber numberWithDouble:?];
          }

          if (_NSIsNSString())
          {
            v15 = [_NSPredicateUtilities _convertStringToNumber:a3];
            if (v15)
            {
              return v15;
            }
          }

          else if (_NSIsNSNumber())
          {
            return a3;
          }
        }

LABEL_51:
        v21 = MEMORY[0x1E695DF30];
        v22 = *MEMORY[0x1E695D930];
        v23 = [NSString stringWithFormat:@"Don't know how to cast (%@) into type %@", a3, a4];
        v24 = v21;
        v25 = v22;
        goto LABEL_58;
      }

      v26 = MEMORY[0x1E695DF30];
      v27 = *MEMORY[0x1E695D930];
      v28 = [NSString stringWithFormat:@"Cannot cast to class %@ which does not exist", a4];
    }

    else
    {
      v26 = MEMORY[0x1E695DF30];
      v27 = *MEMORY[0x1E695D930];
      v28 = [NSString stringWithFormat:@"Cannot cast to unknown class %@", a4];
    }

    v23 = v28;
    v24 = v26;
    goto LABEL_57;
  }

  objc_opt_self();
  v6 = _NSOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v31 = a3;
    _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSExpression CAST(x,'Class') is deprecated and will be removed in a future release.  '%{public}@' should not be cast into a Class object", buf, 0xCu);
  }

  objc_opt_self();
  if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
  {
    +[_NSPredicateUtilities _predicateSecurityAction];
  }

  if (![a3 isNSString])
  {
    goto LABEL_54;
  }

  objc_opt_self();
  if ([_CFPredicatePolicyRestrictedClasses() objectForKey:a3])
  {
    +[_NSPredicateUtilities _predicateSecurityAction];
LABEL_54:
    v29 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D930];
    v23 = [NSString stringWithFormat:@"Cannot cast non string value %@", a3];
    v24 = v29;
LABEL_57:
    v25 = v27;
LABEL_58:
    objc_exception_throw([v24 exceptionWithName:v25 reason:v23 userInfo:0]);
  }

  v7 = NSClassFromString(a3);
  if (v7)
  {
    objc_opt_self();
    if (![*(_CFPredicatePolicyData() + 16) objectForKey:a3])
    {
      Superclass = class_getSuperclass(v7);
      if (Superclass)
      {
        v9 = [[NSString alloc] initWithUTF8String:class_getName(Superclass)];
        objc_opt_self();
        v10 = [_CFPredicatePolicyRestrictedClasses() objectForKey:v9];

        if (v10)
        {
          +[_NSPredicateUtilities _predicateSecurityAction];
        }
      }
    }
  }

  return v7;
}

+ (id)random
{
  if ((_nspredicaterandomnumberseeded & 1) == 0)
  {
    srandomdev();
    _nspredicaterandomnumberseeded = 1;
  }

  v2 = vcvtd_n_f64_s64(random(), 0x1FuLL);

  return [NSNumber numberWithDouble:v2];
}

+ (id)randomn:(id)a3
{
  if ((_nspredicaterandomnumberseeded & 1) == 0)
  {
    srandomdev();
    _nspredicaterandomnumberseeded = 1;
  }

  v4 = random();
  v5 = v4 % [a3 longValue];

  return [NSNumber numberWithLong:v5];
}

+ (id)objectFrom:(id)a3 withIndex:(id)a4
{
  if ((_NSIsNSArray() & 1) == 0 && !_NSIsNSOrderedSet())
  {
    if (_NSIsNSSet())
    {
      objc_opt_self();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        return [a3 member:a4];
      }

      v9 = [a4 constantValue];
      if (![@"FIRST" caseInsensitiveCompare:v9] || !objc_msgSend(@"LAST", "caseInsensitiveCompare:", v9))
      {

        return [a3 anyObject];
      }

      goto LABEL_18;
    }

    if (_NSIsNSDictionary())
    {
      objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        v12 = [a4 constantValue];
        v13 = [a3 allKeys];
        if ([@"FIRST" caseInsensitiveCompare:v12])
        {
          if ([@"LAST" caseInsensitiveCompare:v12])
          {
            v10 = v12;
            goto LABEL_19;
          }

          v17 = [v13 lastObject];
        }

        else
        {
          if (![v13 count])
          {
            return 0;
          }

          v17 = [v13 objectAtIndex:0];
        }

        v16 = v17;
        v15 = a3;
      }

      else
      {
        v15 = a3;
        v16 = a4;
      }

      return [v15 objectForKey:v16];
    }

    v11 = [NSString stringWithFormat:@"The object %@ is NOT a collection.  Cannot retrieve item at index: %@", a3, a4];
LABEL_33:
    if (v11)
    {
      v18 = v11;
      v19 = [MEMORY[0x1E695DF90] dictionary];
      [v19 setObject:a3 forKey:@"list"];
      [v19 setObject:a4 forKey:@"index"];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v18 userInfo:v19]);
    }

    return 0;
  }

  if (_NSIsNSNumber())
  {
    v6 = [a4 integerValue];
    v7 = a3;
LABEL_5:

    return [v7 objectAtIndex:v6];
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [NSString stringWithFormat:@"The symbolic index %@ is unknown.", a4, v20];
    goto LABEL_33;
  }

  v9 = [a4 constantValue];
  if (![@"FIRST" caseInsensitiveCompare:v9])
  {
    if ([a3 count])
    {
      v7 = a3;
      v6 = 0;
      goto LABEL_5;
    }

    return 0;
  }

  if (![@"LAST" caseInsensitiveCompare:v9])
  {

    return [a3 lastObject];
  }

LABEL_18:
  v10 = v9;
LABEL_19:
  if ([@"SIZE" caseInsensitiveCompare:v10])
  {
    v11 = [NSString stringWithFormat:@"The index %@ is NOT appropriate for a collection of type: %@", a4, objc_opt_class()];
    goto LABEL_33;
  }

  v14 = [a3 count];

  return [NSNumber numberWithLong:v14];
}

+ (id)distanceToLocation:(id)a3 fromLocation:(id)a4
{
  if (!objc_lookUpClass("CLLocation"))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = @"Can't calculate distance unless CLLocation is linked.";
LABEL_9:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"Can't calculate distance between non-locations";
    goto LABEL_9;
  }

  [a3 distanceFromLocation:a4];

  return [NSNumber numberWithDouble:?];
}

+ (id)canonical:(id)a3
{
  if ((_NSIsNSString() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't canonicalize non-strings" userInfo:0]);
  }

  v4 = [_NSPredicateOperatorUtilities newStringFrom:a3 usingUnicodeTransforms:387];

  return v4;
}

+ (id)bitwiseAnd:(id)a3 with:(id)a4
{
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't do bit operators on non-numbers" userInfo:0]);
  }

  v6 = [a3 integerValue];
  v7 = [a4 integerValue] & v6;

  return [NSNumber numberWithInteger:v7];
}

+ (id)bitwiseOr:(id)a3 with:(id)a4
{
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't do bit operators on non-numbers" userInfo:0]);
  }

  v6 = [a3 integerValue];
  v7 = [a4 integerValue] | v6;

  return [NSNumber numberWithInteger:v7];
}

+ (id)bitwiseXor:(id)a3 with:(id)a4
{
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't do bit operators on non-numbers" userInfo:0]);
  }

  v6 = [a3 integerValue];
  v7 = [a4 integerValue] ^ v6;

  return [NSNumber numberWithInteger:v7];
}

+ (id)leftshift:(id)a3 by:(id)a4
{
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't do bit operators on non-numbers" userInfo:0]);
  }

  v6 = [a3 integerValue];
  v7 = v6 << [a4 integerValue];

  return [NSNumber numberWithInteger:v7];
}

+ (id)rightshift:(id)a3 by:(id)a4
{
  if (!_NSIsNSNumber() || (_NSIsNSNumber() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't do bit operators on non-numbers" userInfo:0]);
  }

  v6 = [a3 integerValue];
  v7 = v6 >> [a4 integerValue];

  return [NSNumber numberWithInteger:v7];
}

+ (id)onesComplement:(id)a3
{
  if ((_NSIsNSNumber() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't do bit operators on non-numbers" userInfo:0]);
  }

  v4 = ~[a3 integerValue];

  return [NSNumber numberWithInteger:v4];
}

+ (id)groupConcat:(id)a3 separator:(id)a4
{
  if ((_NSIsNSArray() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"GroupConcat requires an array";
    goto LABEL_8;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"Separator must be a string";
LABEL_8:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

  return [a3 componentsJoinedByString:a4];
}

+ (BOOL)_isReservedWordInParser:(id)a3
{
  if ((_qfqp2_InitializedGlobals & 1) == 0)
  {
    _qfqp2_InitializedGlobalData();
  }

  v4 = _qfqp2_ReservedWords;
  v5 = [a3 uppercaseString];

  return [v4 containsObject:v5];
}

+ (NSString)_parserableStringDescription:(uint64_t)a1
{
  objc_opt_self();
  v3 = [(NSString *)NSMutableString stringWithString:a2];
  [(NSMutableString *)v3 replaceOccurrencesOfString:@"\ withString:@"\\\ options:2 range:0, [(NSString *)v3 length]];
  [(NSMutableString *)v3 replaceOccurrencesOfString:@" withString:@"\ options:2 range:0, [(NSString *)v3 length]];
  return [NSString stringWithFormat:@"%@", v3];
}

+ (NSString)_parserableDateDescription:(uint64_t)a1
{
  objc_opt_self();
  [a2 timeIntervalSinceReferenceDate];
  return [NSString stringWithFormat:@"CAST(%f, NSDate)", v3];
}

+ (NSString)_parserableCollectionDescription:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    return @"nil";
  }

  if (_NSIsNSString())
  {

    return [_NSPredicateUtilities _parserableStringDescription:a2];
  }

  if (_NSIsNSDictionary())
  {
    v5 = a2;
    a2 = [a2 allKeys];
    v6 = a2 == 0;
LABEL_13:
    v4 = [NSMutableString stringWithCapacity:50];
    [(NSMutableString *)v4 appendString:@"{"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (v9)
          {
            [(NSMutableString *)v4 appendString:@", "];
          }

          [(NSMutableString *)v4 appendString:[_NSPredicateUtilities _parserableCollectionDescription:v12]];
          if (!v6)
          {
            [(NSMutableString *)v4 appendString:@" = "];
            -[NSMutableString appendString:](v4, "appendString:", +[_NSPredicateUtilities _parserableCollectionDescription:](_NSPredicateUtilities, [v5 objectForKey:v12]));
          }

          v9 = 1;
        }

        v8 = [a2 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v8);
    }

    [(NSMutableString *)v4 appendString:@"}"];
    return v4;
  }

  if (_NSIsNSArray())
  {
    v6 = 1;
    v5 = a2;
    goto LABEL_13;
  }

  if (_NSIsNSSet())
  {
    v5 = a2;
    a2 = [a2 allObjects];
    v6 = 1;
    goto LABEL_13;
  }

  return [a2 description];
}

+ (id)_predicateClassesForSecureCoding
{
  if (qword_1ED43FCF0 != -1)
  {
    dispatch_once(&qword_1ED43FCF0, &__block_literal_global_60);
  }

  return _MergedGlobals_133;
}

@end
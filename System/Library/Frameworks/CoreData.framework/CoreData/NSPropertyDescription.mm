@interface NSPropertyDescription
+ (void)initialize;
- (BOOL)_comparePredicatesAndWarnings:(id)warnings;
- (BOOL)_epsilonEquals:(id)equals rhs:(id)rhs withFlags:(int)flags;
- (BOOL)_isEqual:(id)equal skipIndexCheck:(BOOL)check;
- (BOOL)_isSchemaEqual:(id)equal;
- (BOOL)_nonPredicateValidateValue:(id *)value forKey:(id)key inObject:(id)object error:(id *)error;
- (BOOL)isIndexed;
- (BOOL)isIndexedBySpotlight;
- (BOOL)isStoredInExternalRecord;
- (NSArray)validationPredicates;
- (NSArray)validationWarnings;
- (NSData)versionHash;
- (NSDictionary)userInfo;
- (NSPropertyDescription)initWithCoder:(id)coder;
- (NSString)renamingIdentifier;
- (_NSExtraPropertyIVars)_extraIVars;
- (__CFString)_elementPath;
- (__CFString)_rootName;
- (id)_initWithName:(id)name;
- (id)_namespace;
- (id)_qualifiedName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)superCompositeAttribute;
- (unint64_t)hash;
- (unsigned)_swiftDataPropertyFlags;
- (void)_appendPropertyFieldsToData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots;
- (void)_createCachesAndOptimizeState;
- (void)_initializeExtraIVars;
- (void)_replaceValidationPredicates:(id)predicates andWarnings:(id)warnings;
- (void)_setEntityAndMaintainIndices:(id)indices;
- (void)_setEntitysReferenceID:(int64_t)d;
- (void)_setNamespace:(unint64_t *)namespace;
- (void)_setOrdered:(BOOL)ordered;
- (void)_versionHash:(char *)hash inStyle:(unint64_t)style;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setIndexed:(BOOL)indexed;
- (void)setIndexedBySpotlight:(BOOL)indexedBySpotlight;
- (void)setName:(NSString *)name;
- (void)setOptional:(BOOL)optional;
- (void)setRenamingIdentifier:(NSString *)renamingIdentifier;
- (void)setStoredInExternalRecord:(BOOL)storedInExternalRecord;
- (void)setSuperCompositeAttribute:(id)attribute;
- (void)setTransient:(BOOL)transient;
- (void)setUserInfo:(NSDictionary *)userInfo;
- (void)setValidationPredicates:(NSArray *)validationPredicates withValidationWarnings:(NSArray *)validationWarnings;
- (void)setVersionHashModifier:(NSString *)versionHashModifier;
- (void)set_swiftDataPropertyFlags:(unsigned int)flags;
@end

@implementation NSPropertyDescription

- (id)superCompositeAttribute
{
  if (!atomic_load(&self->_extraIvars))
  {
    return 0;
  }

  v3 = atomic_load(&self->_extraIvars);
  return *(v3 + 32);
}

- (NSArray)validationWarnings
{
  if (self->_validationWarnings)
  {
    return self->_validationWarnings;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (NSArray)validationPredicates
{
  if (self->_validationPredicates)
  {
    return self->_validationPredicates;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (id)_namespace
{
  if (!atomic_load(&self->_extraIvars))
  {
    return 0;
  }

  v3 = atomic_load(&self->_extraIvars);
  return *(v3 + 24);
}

- (id)_qualifiedName
{
  _namespace = [(NSPropertyDescription *)self _namespace];
  if (_namespace)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", _namespace, -[NSPropertyDescription name](self, "name")];
  }

  return [(NSPropertyDescription *)self name];
}

- (void)dealloc
{
  p_extraIvars = &self->_extraIvars;
  if (atomic_load(&self->_extraIvars))
  {
    v5 = atomic_load(p_extraIvars);

    v6 = atomic_load(p_extraIvars);
    *v6 = 0;
    v7 = atomic_load(p_extraIvars);

    v8 = atomic_load(p_extraIvars);
    *(v8 + 24) = 0;
    v9 = atomic_load(p_extraIvars);
    *(v9 + 32) = 0;
    if ((*&self->_propertyDescriptionFlags & 0x80) == 0)
    {
      v10 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v10 = malloc_default_zone();
      }

      v11 = atomic_load(&self->_extraIvars);
      malloc_zone_free(v10, v11);
    }

    atomic_store(0, &self->_extraIvars);
  }

  self->_entity = 0;
  self->_name = 0;

  self->_validationPredicates = 0;
  self->_validationWarnings = 0;

  self->_userInfo = 0;
  self->_versionHash = 0;

  self->_versionHashModifier = 0;
  v12.receiver = self;
  v12.super_class = NSPropertyDescription;
  [(NSPropertyDescription *)&v12 dealloc];
}

+ (void)initialize
{
  objc_opt_self();

  objc_opt_class();
}

- (NSString)renamingIdentifier
{
  v2 = atomic_load(&self->_extraIvars);
  if (v2 && (v3 = atomic_load(&self->_extraIvars), (v4 = *v3) != 0))
  {
    return v4;
  }

  else
  {
    return [(NSPropertyDescription *)self name];
  }
}

- (void)_initializeExtraIVars
{
  v3 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v3 = malloc_default_zone();
  }

  v4 = malloc_type_zone_calloc(v3, 1uLL, 0x30uLL, 0x108004025C94E70uLL);
  v5 = 0;
  atomic_compare_exchange_strong(&self->_extraIvars, &v5, v4);
  if (v5)
  {
    v6 = v4;
    v7 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v7 = malloc_default_zone();
    }

    malloc_zone_free(v7, v6);
  }
}

- (NSDictionary)userInfo
{
  if (self->_userInfo)
  {
    return &self->_userInfo->super;
  }

  else
  {
    return NSDictionary_EmptyDictionary;
  }
}

- (void)_createCachesAndOptimizeState
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  validationPredicates = self->_validationPredicates;
  v3 = [(NSArray *)validationPredicates countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(validationPredicates);
        }

        [*(*(&v8 + 1) + 8 * i) allowEvaluation];
      }

      v4 = [(NSArray *)validationPredicates countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isStoredInExternalRecord
{
  if ((*&self->_propertyDescriptionFlags & 0x40) != 0)
  {
    return ![(NSPropertyDescription *)self isTransient:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isIndexedBySpotlight
{
  if ((*&self->_propertyDescriptionFlags & 0x20) != 0)
  {
    return ![(NSPropertyDescription *)self isTransient:v2];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  name = [(NSPropertyDescription *)self name];

  return [(NSString *)name hash];
}

- (_NSExtraPropertyIVars)_extraIVars
{
  p_extraIvars = &self->_extraIvars;
  if (!atomic_load(&self->_extraIvars))
  {
    [(NSPropertyDescription *)self _initializeExtraIVars];
  }

  return atomic_load(p_extraIvars);
}

- (BOOL)isIndexed
{
  if (self->_entity)
  {
    if ([(NSPropertyDescription *)self _isEditable])
    {
      entity = self->_entity;

      LOBYTE(v4) = [(NSEntityDescription *)entity _hasIndexForProperty:?];
    }

    else
    {
      v5 = ([(NSPropertyDescription *)self _extraIVars]+ 44);
      v6 = atomic_load(v5);
      if (!v6)
      {
        if ([(NSEntityDescription *)self->_entity _hasIndexForProperty:?])
        {
          v6 = 3;
        }

        else
        {
          v6 = 1;
        }

        atomic_store(v6, v5);
      }

      LOBYTE(v4) = v6 == 3;
    }
  }

  else
  {
    return (*&self->_propertyDescriptionFlags >> 3) & 1;
  }

  return v4;
}

- (__CFString)_rootName
{
  if (result)
  {
    _namespace = [(__CFString *)result _namespace];
    if (_namespace)
    {
      v2 = [_namespace componentsSeparatedByString:@"."];

      return [v2 firstObject];
    }

    else
    {
      return &stru_1EF3F1768;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if ([(NSPropertyDescription *)self isOptional])
  {
    [coder encodeBool:1 forKey:@"NSIsOptional"];
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if ([(NSPropertyDescription *)self isReadOnly])
  {
    [coder encodeBool:1 forKey:@"NSIsReadOnly"];
    v5 = v5 | 4;
  }

  if ([(NSPropertyDescription *)self isTransient])
  {
    [coder encodeBool:1 forKey:@"NSIsTransient"];
    v5 = v5 | 8;
  }

  if ([(NSPropertyDescription *)self isIndexedBySpotlight])
  {
    [coder encodeBool:1 forKey:@"NSIndexedBySpotlight"];
    v5 = v5 | 0x100;
  }

  if ([(NSPropertyDescription *)self isStoredInExternalRecord])
  {
    [coder encodeBool:1 forKey:@"NSIsStoredInTruth"];
    v5 = v5 | 0x200;
  }

  if ([(NSPropertyDescription *)self _isOrdered])
  {
    [coder encodeBool:1 forKey:@"NSIsOrdered"];
    v5 = v5 | 0x400;
  }

  if ([(NSPropertyDescription *)self _allowsCloudEncryption])
  {
    [coder encodeBool:1 forKey:@"NSAllowsCloudEncryption"];
    v5 = v5 | 0x800;
  }

  renamingIdentifier = [(NSPropertyDescription *)self renamingIdentifier];
  if (renamingIdentifier)
  {
    [coder encodeObject:renamingIdentifier forKey:@"NSRenamingIdentifier"];
  }

  [coder encodeObject:-[NSPropertyDescription name](self forKey:{"name"), @"NSPropertyName"}];
  [coder encodeConditionalObject:-[NSPropertyDescription entity](self forKey:{"entity"), @"NSEntity"}];
  validationPredicates = [(NSPropertyDescription *)self validationPredicates];
  if ([(NSArray *)validationPredicates count])
  {
    [coder encodeObject:validationPredicates forKey:@"NSValidationPredicates"];
  }

  else
  {
    v5 = v5 | 0x10;
  }

  validationWarnings = [(NSPropertyDescription *)self validationWarnings];
  if ([(NSArray *)validationWarnings count])
  {
    [coder encodeObject:validationWarnings forKey:@"NSValidationWarnings"];
  }

  else
  {
    v5 = v5 | 0x20;
  }

  userInfo = [(NSPropertyDescription *)self userInfo];
  if ([(NSDictionary *)userInfo count])
  {
    [coder encodeObject:userInfo forKey:@"NSUserInfo"];
  }

  else
  {
    v5 = v5 | 0x40;
  }

  versionHashModifier = [(NSPropertyDescription *)self versionHashModifier];
  if ([(NSString *)versionHashModifier length])
  {
    [coder encodeObject:versionHashModifier forKey:@"NSVersionHashModifier"];
  }

  else
  {
    v5 = v5 | 0x80;
  }

  v11 = [(NSPropertyDescription *)self _encodedPropertyFlagsForFlags:v5];

  [coder encodeInt32:v11 forKey:@"_P"];
}

- (NSPropertyDescription)initWithCoder:(id)coder
{
  v50 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = NSPropertyDescription;
  v4 = [(NSPropertyDescription *)&v48 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v39 = v5;
    v45 = __39__NSPropertyDescription_initWithCoder___block_invoke;
    v46 = &unk_1E6EC16F0;
    v47 = v5;
    v6 = [coder decodeInt32ForKey:@"_P"];
    v7 = v6;
    if (v6)
    {
      *&v4->_propertyDescriptionFlags = (2 * v6) & 4 | (v6 >> 2) & 3 | (v6 >> 3) & 0x60 | (v6 >> 2) & 0x100 | (((v6 >> 11) & 1) << 15) | *&v4->_propertyDescriptionFlags & 0x7E98;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if ([coder decodeBoolForKey:@"NSIsOptional"])
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }

      *&v4->_propertyDescriptionFlags = *&v4->_propertyDescriptionFlags & 0xFFFB | v8;
      *&v4->_propertyDescriptionFlags = *&v4->_propertyDescriptionFlags & 0xFFFE | [coder decodeBoolForKey:@"NSIsReadOnly"];
      if ([coder decodeBoolForKey:@"NSIsTransient"])
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      *&v4->_propertyDescriptionFlags = *&v4->_propertyDescriptionFlags & 0xFFFD | v9;
      if ([coder decodeBoolForKey:@"NSIndexedBySpotlight"])
      {
        v10 = 32;
      }

      else
      {
        v10 = 0;
      }

      *&v4->_propertyDescriptionFlags = *&v4->_propertyDescriptionFlags & 0xFFDF | v10;
      if ([coder decodeBoolForKey:@"NSIsStoredInTruth"])
      {
        v11 = 64;
      }

      else
      {
        v11 = 0;
      }

      *&v4->_propertyDescriptionFlags = *&v4->_propertyDescriptionFlags & 0xFFBF | v11;
      if ([coder decodeBoolForKey:@"NSIsOrdered"])
      {
        v12 = 256;
      }

      else
      {
        v12 = 0;
      }

      *&v4->_propertyDescriptionFlags = *&v4->_propertyDescriptionFlags & 0xFEFF | v12;
      if ([coder decodeBoolForKey:@"NSAllowsCloudEncryption"])
      {
        v13 = 0x8000;
      }

      else
      {
        v13 = 0;
      }

      *&v4->_propertyDescriptionFlags = v13 & 0x8000 | *&v4->_propertyDescriptionFlags & 0x7FFF;
    }

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [coder decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, v16, objc_opt_class(), 0), @"NSValidationPredicates"}];
    v4->_validationPredicates = v17;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v18)
    {
      v19 = *v41;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          if ((byte_1ED4BEECE & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v21 allowEvaluation];
            }
          }

          if ([v21 isNSArray])
          {
            [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF4353F0)}];

            goto LABEL_61;
          }
        }

        v18 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:
    if ((v7 & 0x20) == 0)
    {
      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v4->_validationWarnings = [coder decodeObjectOfClasses:objc_msgSend(v22 forKey:{"setWithObjects:", v23, v24, v25, objc_opt_class(), 0), @"NSValidationWarnings"}];
    }

    if ((v7 & 0x40) == 0)
    {
      v4->_userInfo = [coder decodeObjectOfClasses:+[_PFRoutines plistClassesForSecureCoding]() forKey:@"NSUserInfo"];
    }

    if ((v7 & 0x80) == 0)
    {
      v26 = MEMORY[0x1E695DFD8];
      v27 = objc_opt_class();
      v28 = [coder decodeObjectOfClasses:objc_msgSend(v26 forKey:{"setWithObjects:", v27, objc_opt_class(), 0), @"NSVersionHashModifier"}];
      v4->_versionHashModifier = v28;
      if (v28)
      {
        if (![(NSString *)v28 isNSString])
        {
          v34 = &unk_1EF435418;
          goto LABEL_60;
        }
      }
    }

    *&v4->_propertyDescriptionFlags &= ~0x10u;
    v29 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPropertyName"];
    v4->_name = v29;
    if (v29 && ![(NSString *)v29 isNSString])
    {
      v34 = &unk_1EF435440;
      goto LABEL_60;
    }

    v30 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSEntity"];
    v4->_entity = v30;
    if (v30)
    {
      if (v39)
      {
        v31 = v39[3];
      }

      else
      {
        v31 = 0;
      }

      [v31 addObject:v30];
      entity = v4->_entity;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v34 = &unk_1EF435490;
      }

      else
      {
        v34 = &unk_1EF435468;
      }

      if (v39 == 0 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_60;
      }

      if (!v39[1] && !v39[2])
      {
        v34 = &unk_1EF435490;
        goto LABEL_60;
      }
    }

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    -[NSPropertyDescription setRenamingIdentifier:](v4, "setRenamingIdentifier:", [coder decodeObjectOfClasses:objc_msgSend(v35 forKey:{"setWithObjects:", v36, objc_opt_class(), 0), @"NSRenamingIdentifier"}]);
    if (![(NSPropertyDescription *)v4 renamingIdentifier]|| ([(NSString *)[(NSPropertyDescription *)v4 renamingIdentifier] isNSString]& 1) != 0)
    {
      [(NSPropertyDescription *)v4 _setNamespace:?];
      [(NSPropertyDescription *)v4 setSuperCompositeAttribute:0];
      v4->_entitysReferenceIDForProperty = -1;
LABEL_62:
      v45(v44);
      goto LABEL_63;
    }

    v34 = &unk_1EF4354B8;
LABEL_60:
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v34)}];

LABEL_61:
    v4 = 0;
    goto LABEL_62;
  }

LABEL_63:
  v37 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_setNamespace:(unint64_t *)namespace
{
  if (namespace)
  {
    v4 = namespace + 7;
    if (atomic_load(namespace + 7))
    {
      v6 = atomic_load(v4);

      v7 = atomic_load(v4);
      *(v7 + 24) = 0;
    }

    if (!atomic_load(v4))
    {
      [namespace _initializeExtraIVars];
    }

    v9 = namespace + 7;
    v10 = atomic_load(v9);
    v15 = *(v10 + 24);
    v11 = [a2 copy];
    v12 = atomic_load(v9);
    v13 = v15;
    v14 = v15;
    atomic_compare_exchange_strong((v12 + 24), &v14, v11);
    if (v14 != v13)
    {
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    *(v4 + 32) = [(NSString *)self->_name copy];
    *(v4 + 40) = [(NSArray *)[(NSPropertyDescription *)self validationPredicates] copy];
    *(v4 + 48) = [(NSArray *)[(NSPropertyDescription *)self validationWarnings] copy];
    v5 = *(v4 + 72) & 0xFFFE | *&self->_propertyDescriptionFlags & 1;
    *(v4 + 72) = *(v4 + 72) & 0xFFFE | *&self->_propertyDescriptionFlags & 1;
    v6 = v5 & 0xFFFFFFFD | (2 * ((*&self->_propertyDescriptionFlags >> 1) & 1));
    *(v4 + 72) = v6;
    v7 = v6 & 0xFFFFFFFB | (4 * ((*&self->_propertyDescriptionFlags >> 2) & 1));
    *(v4 + 72) = v7;
    v8 = v7 & 0xFFFFFFF7 | (8 * ((*&self->_propertyDescriptionFlags >> 3) & 1));
    *(v4 + 72) = v8;
    v9 = v8 & 0xFFFFFFEF | (16 * ((*&self->_propertyDescriptionFlags >> 4) & 1));
    *(v4 + 72) = v9;
    v10 = v9 & 0xFFFFFFDF | (32 * ((*&self->_propertyDescriptionFlags >> 5) & 1));
    *(v4 + 72) = v10;
    v11 = v10 & 0xFFFFFFBF | (((*&self->_propertyDescriptionFlags >> 6) & 1) << 6);
    *(v4 + 72) = v11;
    v12 = v11 & 0xFFFFFEFF | ((HIBYTE(*&self->_propertyDescriptionFlags) & 1) << 8);
    *(v4 + 72) = v12;
    *(v4 + 72) = *&self->_propertyDescriptionFlags & 0x8000 | v12 & 0x7FFF;
    *(v4 + 64) = [(NSMutableDictionary *)self->_userInfo copy];
    *(v4 + 8) = [(NSString *)self->_versionHashModifier copy];
    *(v4 + 16) = 0;
    *(v4 + 76) = -1;
    [v4 setRenamingIdentifier:{-[NSPropertyDescription renamingIdentifier](self, "renamingIdentifier")}];
    [v4 setSuperCompositeAttribute:{-[NSPropertyDescription superCompositeAttribute](self, "superCompositeAttribute")}];
  }

  return v4;
}

- (id)description
{
  context = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSPropertyDescription;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@), name %@, isOptional %d, isTransient %d, entity %@, renamingIdentifier %@, validation predicates %@, warnings %@, versionHashModifier %@\n userInfo %@", -[NSPropertyDescription description](&v6, sel_description), -[NSPropertyDescription name](self, "name"), -[NSPropertyDescription isOptional](self, "isOptional"), -[NSPropertyDescription isTransient](self, "isTransient"), -[NSEntityDescription name](-[NSPropertyDescription entity](self, "entity"), "name"), -[NSPropertyDescription renamingIdentifier](self, "renamingIdentifier"), -[NSPropertyDescription validationPredicates](self, "validationPredicates"), -[NSPropertyDescription validationWarnings](self, "validationWarnings"), -[NSPropertyDescription versionHashModifier](self, "versionHashModifier"), -[NSPropertyDescription userInfo](self, "userInfo")];
  objc_autoreleasePoolPop(context);
  return v3;
}

- (void)setIndexed:(BOOL)indexed
{
  entity = self->_entity;
  if (entity)
  {
    [(NSEntityDescription *)entity _addIndexForProperty:?];
  }

  else
  {
    if (indexed)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    *&self->_propertyDescriptionFlags = *&self->_propertyDescriptionFlags & 0xFFF7 | v5;
  }
}

- (void)setOptional:(BOOL)optional
{
  v3 = optional;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&self->_propertyDescriptionFlags = *&self->_propertyDescriptionFlags & 0xFFFB | v5;
}

- (void)setTransient:(BOOL)transient
{
  v3 = transient;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_propertyDescriptionFlags = *&self->_propertyDescriptionFlags & 0xFFFD | v5;
}

- (void)setName:(NSString *)name
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (self->_name == name)
  {
LABEL_15:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  entity = [(NSPropertyDescription *)self entity];
  v6 = entity;
  if (entity && [(NSDictionary *)[(NSEntityDescription *)entity propertiesByName] objectForKey:name]&& ![(NSPropertyDescription *)self superCompositeAttribute])
  {
LABEL_19:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't change name of property from %@ to %@", self->_name, name), 0}]);
  }

  if ([(NSPropertyDescription *)self superCompositeAttribute])
  {
    v7 = [-[NSPropertyDescription superCompositeAttribute](self "superCompositeAttribute")];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([objc_msgSend(*(*(&v14 + 1) + 8 * i) "name")])
          {
            goto LABEL_19;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    self->_name = [(NSString *)name copy];
    goto LABEL_15;
  }

  [(NSEntityDescription *)v6 _removeProperty:?];

  self->_name = [(NSString *)name copy];
  v13 = *MEMORY[0x1E69E9840];

  [(NSEntityDescription *)v6 _addProperty:self];
}

- (void)setValidationPredicates:(NSArray *)validationPredicates withValidationWarnings:(NSArray *)validationWarnings
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  v7 = [(NSArray *)validationPredicates count];
  if (v7 != [(NSArray *)validationWarnings count])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Mismatch between length of validation predicates and warnings" userInfo:0]);
  }

  v8 = self->_validationPredicates;
  if (v8 != validationPredicates)
  {

    self->_validationPredicates = [(NSArray *)validationPredicates copy];
  }

  v9 = self->_validationWarnings;
  if (v9 != validationWarnings)
  {

    self->_validationWarnings = [(NSArray *)validationWarnings copy];
  }
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  objc_sync_enter(self);
  v5 = self->_userInfo;
  if (v5 != userInfo)
  {

    self->_userInfo = [(NSDictionary *)userInfo copy];
  }

  objc_sync_exit(self);
}

- (NSData)versionHash
{
  v10 = *MEMORY[0x1E69E9840];
  versionHash = self->_versionHash;
  if (versionHash)
  {
LABEL_7:
    v5 = versionHash;
    goto LABEL_8;
  }

  [(NSPropertyDescription *)self _versionHash:v9 inStyle:0];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:32];
  if (![(NSPropertyDescription *)self _isEditable])
  {
    v6 = 0;
    atomic_compare_exchange_strong(&self->_versionHash, &v6, v4);
    if (v6)
    {
    }

    versionHash = self->_versionHash;
    goto LABEL_7;
  }

  v5 = v4;
LABEL_8:
  result = v5;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setVersionHashModifier:(NSString *)versionHashModifier
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  v5 = self->_versionHashModifier;
  if (v5 != versionHashModifier)
  {

    self->_versionHashModifier = [(NSString *)versionHashModifier copy];
  }
}

- (void)setIndexedBySpotlight:(BOOL)indexedBySpotlight
{
  v3 = indexedBySpotlight;
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(NSPropertyDescription *)self _propertyType]== 7)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = @"attribute";
    v10[0] = [(NSPropertyDescription *)self name];
    objc_exception_throw([v7 exceptionWithName:v8 reason:@"A composite attribute type cannot be indexed by spotlight." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}]);
  }

  if (v3)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *&self->_propertyDescriptionFlags = *&self->_propertyDescriptionFlags & 0xFFDF | v5;
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setStoredInExternalRecord:(BOOL)storedInExternalRecord
{
  if (storedInExternalRecord)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_propertyDescriptionFlags = *&self->_propertyDescriptionFlags & 0xFFBF | v3;
}

- (void)setRenamingIdentifier:(NSString *)renamingIdentifier
{
  if (!renamingIdentifier || [(NSString *)renamingIdentifier isNSString]&& [(NSString *)[(NSPropertyDescription *)self name] isEqualToString:renamingIdentifier])
  {
    p_extraIvars = &self->_extraIvars;
    if (atomic_load(&self->_extraIvars))
    {
      v7 = atomic_load(p_extraIvars);

      v8 = atomic_load(p_extraIvars);
      *v8 = 0;
    }
  }

  else
  {
    v9 = &self->_extraIvars;
    if (!atomic_load(&self->_extraIvars))
    {
      [(NSPropertyDescription *)self _initializeExtraIVars];
    }

    v11 = atomic_load(v9);
    v16 = *v11;
    v12 = [(NSString *)renamingIdentifier copy];
    v13 = atomic_load(v9);
    v14 = v16;
    v15 = v16;
    atomic_compare_exchange_strong(v13, &v15, v12);
    if (v15 != v14)
    {
    }
  }
}

- (__CFString)_elementPath
{
  if (result)
  {
    v1 = result;
    _namespace = [(__CFString *)result _namespace];
    if (_namespace)
    {
      v3 = _namespace;
      v4 = [_namespace rangeOfString:@"."];
      if ((v4 - 1) > 0x7FFFFFFFFFFFFFFDLL)
      {

        return [(__CFString *)v1 name];
      }

      else
      {
        v5 = [v3 substringFromIndex:v4 + 1];
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v5, -[__CFString name](v1, "name")];
      }
    }

    else
    {
      return &stru_1EF3F1768;
    }
  }

  return result;
}

- (void)setSuperCompositeAttribute:(id)attribute
{
  p_extraIvars = &self->_extraIvars;
  if (!atomic_load(&self->_extraIvars))
  {
    [(NSPropertyDescription *)self _initializeExtraIVars];
  }

  v7 = atomic_load(p_extraIvars);
  *(v7 + 32) = attribute;
  if (attribute)
  {
    if ([attribute _namespace])
    {
      name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(attribute, "_namespace"), objc_msgSend(attribute, "name")];
    }

    else
    {
      name = [attribute name];
    }

    v9 = name;
  }

  else
  {
    v9 = 0;
  }

  [(NSPropertyDescription *)self _setNamespace:v9];
}

- (BOOL)_epsilonEquals:(id)equals rhs:(id)rhs withFlags:(int)flags
{
  if (equals == rhs)
  {
    return 1;
  }

  else
  {
    return [equals isEqual:rhs];
  }
}

- (BOOL)_isSchemaEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  name = [(NSPropertyDescription *)self name];
  name2 = [equal name];
  if (name == name2)
  {
    return 1;
  }

  v7 = name2;
  result = 0;
  if (name && v7)
  {

    return [(NSString *)name isEqual:?];
  }

  return result;
}

- (void)_replaceValidationPredicates:(id)predicates andWarnings:(id)warnings
{
  v18 = *MEMORY[0x1E69E9840];

  self->_validationPredicates = predicates;
  self->_validationWarnings = warnings;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  validationPredicates = self->_validationPredicates;
  v8 = [(NSArray *)validationPredicates countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(validationPredicates);
        }

        [*(*(&v13 + 1) + 8 * i) allowEvaluation];
      }

      v9 = [(NSArray *)validationPredicates countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_versionHash:(char *)hash inStyle:(unint64_t)style
{
  memset(&c, 0, sizeof(c));
  v6 = [(NSPropertyDescription *)self isOptional:hash];
  if ([(NSPropertyDescription *)self isTransient])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v6;
  if ([(NSPropertyDescription *)self isReadOnly])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  data = v8 | v9;
  CC_SHA256_Init(&c);
  name = self->_name;
  if (!name)
  {
LABEL_10:
    CStringPtr = [(__CFString *)name UTF8String];
    if (!CStringPtr)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  CStringPtr = CFStringGetCStringPtr(name, 0x8000100u);
  if (!CStringPtr)
  {
    name = self->_name;
    goto LABEL_10;
  }

LABEL_11:
  v12 = CStringPtr;
  v13 = strlen(CStringPtr);
  CC_SHA256_Update(&c, v12, v13);
LABEL_12:
  CC_SHA256_Update(&c, &data, 2u);
  versionHashModifier = self->_versionHashModifier;
  if (versionHashModifier)
  {
    uTF8String = CFStringGetCStringPtr(versionHashModifier, 0x8000100u);
    if (!uTF8String)
    {
      uTF8String = [(NSString *)self->_versionHashModifier UTF8String];
    }

    v16 = strlen(uTF8String);
    CC_SHA256_Update(&c, uTF8String, v16);
  }

  CC_SHA256_Final(hash, &c);
}

- (BOOL)_isEqual:(id)equal skipIndexCheck:(BOOL)check
{
  if (equal == self)
  {
    LOBYTE(name2) = 1;
    return name2;
  }

  if (!equal)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  _propertyType = [(NSPropertyDescription *)self _propertyType];
  if (_propertyType != [equal _propertyType])
  {
    goto LABEL_16;
  }

  name = [(NSPropertyDescription *)self name];
  name2 = [equal name];
  if (name == name2 || (v10 = name2, LOBYTE(name2) = 0, name) && v10 && (LODWORD(name2) = [(NSString *)name isEqual:?], name2))
  {
    isOptional = [(NSPropertyDescription *)self isOptional];
    if (isOptional != [equal isOptional] || (v12 = -[NSPropertyDescription isTransient](self, "isTransient"), v12 != objc_msgSend(equal, "isTransient")) || (v13 = -[NSPropertyDescription _allowsCloudEncryption](self, "_allowsCloudEncryption"), v13 != objc_msgSend(equal, "_allowsCloudEncryption")) || !check && (v14 = -[NSPropertyDescription isIndexed](self, "isIndexed"), v14 != objc_msgSend(equal, "isIndexed")) || (v15 = -[NSPropertyDescription isIndexedBySpotlight](self, "isIndexedBySpotlight"), v15 != objc_msgSend(equal, "isIndexedBySpotlight")) || (v16 = -[NSPropertyDescription isStoredInExternalRecord](self, "isStoredInExternalRecord"), v16 != objc_msgSend(equal, "isStoredInExternalRecord")))
    {
LABEL_16:
      LOBYTE(name2) = 0;
      return name2;
    }

    userInfo = [(NSPropertyDescription *)self userInfo];
    name2 = [equal userInfo];
    if (userInfo == name2 || (v18 = name2, LOBYTE(name2) = 0, userInfo) && v18 && (LODWORD(name2) = [(NSDictionary *)userInfo isEqual:?], name2))
    {
      versionHashModifier = [(NSPropertyDescription *)self versionHashModifier];
      name2 = [equal versionHashModifier];
      if (versionHashModifier == name2 || (v20 = name2, LOBYTE(name2) = 0, versionHashModifier) && v20 && (LODWORD(name2) = [(NSString *)versionHashModifier isEqual:?], name2))
      {

        LOBYTE(name2) = [(NSPropertyDescription *)self _comparePredicatesAndWarnings:equal];
      }
    }
  }

  return name2;
}

- (id)_initWithName:(id)name
{
  v7.receiver = self;
  v7.super_class = NSPropertyDescription;
  v4 = [(NSPropertyDescription *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_propertyDescriptionFlags = *&v4->_propertyDescriptionFlags & 0xFE80 | 4;
    v4->_name = [name copy];
    v5->_entitysReferenceIDForProperty = -1;
    v5->_versionHashModifier = 0;
    v5->_versionHash = 0;
  }

  return v5;
}

- (void)_setEntityAndMaintainIndices:(id)indices
{
  entity = self->_entity;
  if (entity == indices)
  {
    return;
  }

  if (entity)
  {
    if ([(NSEntityDescription *)entity _hasIndexForProperty:?])
    {
      [(NSEntityDescription *)self->_entity _removeIndexForProperty:?];
      self->_entity = indices;
      goto LABEL_6;
    }

    self->_entity = indices;
LABEL_11:
    if (indices)
    {
      return;
    }

    v7 = *&self->_propertyDescriptionFlags & 0xFFF7;
    goto LABEL_14;
  }

  propertyDescriptionFlags = self->_propertyDescriptionFlags;
  self->_entity = indices;
  if ((propertyDescriptionFlags & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!indices)
  {
    v7 = *&self->_propertyDescriptionFlags | 8;
LABEL_14:
    *&self->_propertyDescriptionFlags = v7;
    return;
  }

  [(NSEntityDescription *)indices _addIndexForProperty:?];
}

- (void)_setEntitysReferenceID:(int64_t)d
{
  entitysReferenceIDForProperty = self->_entitysReferenceIDForProperty;
  if (entitysReferenceIDForProperty == -1 || entitysReferenceIDForProperty == d)
  {
    self->_entitysReferenceIDForProperty = d;
  }

  else
  {
    __break(1u);
  }
}

- (void)_setOrdered:(BOOL)ordered
{
  if (ordered)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_propertyDescriptionFlags = *&self->_propertyDescriptionFlags & 0xFEFF | v3;
}

- (BOOL)_nonPredicateValidateValue:(id *)value forKey:(id)key inObject:(id)object error:(id *)error
{
  if ([(NSPropertyDescription *)self isOptional]|| *value || [(NSPropertyDescription *)self isTransient]&& z9dsptsiQ80etb9782fsrs98bfdle88 != 1)
  {
    return 1;
  }

  if (!error)
  {
    return 0;
  }

  v12 = [(NSManagedObject *)object _generateErrorWithCode:0 andMessage:key forKey:*value andValue:0 additionalDetail:?];
  result = 0;
  *error = v12;
  return result;
}

- (BOOL)_comparePredicatesAndWarnings:(id)warnings
{
  _rawValidationPredicates = [(NSPropertyDescription *)self _rawValidationPredicates];
  _rawValidationPredicates2 = [warnings _rawValidationPredicates];
  if (_rawValidationPredicates == _rawValidationPredicates2 || (v7 = _rawValidationPredicates2, LOBYTE(_rawValidationPredicates2) = 0, _rawValidationPredicates) && v7 && (LODWORD(_rawValidationPredicates2) = [_rawValidationPredicates isEqual:?], _rawValidationPredicates2))
  {
    _rawValidationWarnings = [(NSPropertyDescription *)self _rawValidationWarnings];
    _rawValidationPredicates2 = [warnings _rawValidationWarnings];
    if (_rawValidationWarnings == _rawValidationPredicates2)
    {
      LOBYTE(_rawValidationPredicates2) = 1;
    }

    else
    {
      v9 = _rawValidationPredicates2;
      LOBYTE(_rawValidationPredicates2) = 0;
      if (_rawValidationWarnings && v9)
      {

        LOBYTE(_rawValidationPredicates2) = [_rawValidationWarnings isEqual:?];
      }
    }
  }

  return _rawValidationPredicates2;
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)_appendPropertyFieldsToData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots
{
  _writeInt32IntoData(data, [(NSPropertyDescription *)self _propertyType:data]);
  _writeInt32IntoData(data, *&self->_propertyDescriptionFlags);
  _writeInt32IntoData(data, [objc_msgSend(strings valueForKey:{self->_versionHashModifier), "unsignedIntegerValue"}]);
  _writeInt32IntoData(data, [objc_msgSend(uniquedData objectForKey:{self->_versionHash), "unsignedIntegerValue"}]);
  _writeInt32IntoData(data, [slots indexForKey:{-[NSEntityDescription name](self->_entity, "name")}]);
  _writeInt32IntoData(data, [objc_msgSend(names objectForKey:{self->_name), "unsignedIntegerValue"}]);
  if ([(NSArray *)self->_validationWarnings count])
  {
    _writeInt32IntoData(data, 1u);
    _writePFEncodedArrayShapeIntoData(data, self->_validationPredicates, uniquedData, 0);
    _writePFEncodedArrayShapeIntoData(data, self->_validationWarnings, strings, uniquedData);
  }

  else
  {
    _writeInt32IntoData(data, 0);
  }

  if (atomic_load(&self->_extraIvars))
  {
    _writeInt32IntoData(data, 1u);
    v15 = atomic_load(&self->_extraIvars);
    if (*v15)
    {
      _writeInt32IntoData(data, 1u);
      v16 = atomic_load(&self->_extraIvars);
      _writeInt32IntoData(data, [objc_msgSend(strings objectForKey:{*v16), "unsignedIntegerValue"}]);
    }

    else
    {
      _writeInt64IntoData(data, 0);
    }

    v17 = atomic_load(&self->_extraIvars);
    _writeInt64IntoData(data, *(v17 + 8));
    v18 = atomic_load(&self->_extraIvars);
    _writeInt64IntoData(data, *(v18 + 16));
  }

  else
  {
    _writeInt32IntoData(data, 0);
  }

  if (self->_userInfo)
  {
    v19 = [objc_msgSend(uniquedData "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v19 = 0;
  }

  _writeInt32IntoData(data, v19);
  _entitysReferenceID = [(NSPropertyDescription *)self _entitysReferenceID];

  _writeInt32IntoData(data, _entitysReferenceID);
}

- (void)set_swiftDataPropertyFlags:(unsigned int)flags
{
  p_extraIvars = &self->_extraIvars;
  if (!atomic_load(&self->_extraIvars))
  {
    [(NSPropertyDescription *)self _initializeExtraIVars];
  }

  v6 = atomic_load(p_extraIvars);
  *(v6 + 40) = flags;
}

- (unsigned)_swiftDataPropertyFlags
{
  if (!atomic_load(&self->_extraIvars))
  {
    return 0;
  }

  v3 = atomic_load(&self->_extraIvars);
  return *(v3 + 40);
}

@end
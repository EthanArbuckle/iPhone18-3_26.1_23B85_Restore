@interface __NSFileSecurity
+ (id)__new:(_filesec *)__new;
- (BOOL)clearProperties:(unint64_t)properties;
- (BOOL)copyAccessControlList:(_acl *)list;
- (BOOL)getGroup:(unsigned int *)group;
- (BOOL)getGroupUUID:(unsigned __int8 *)(a3;
- (BOOL)getMode:(unsigned __int16 *)mode;
- (BOOL)getOwner:(unsigned int *)owner;
- (BOOL)getOwnerUUID:(unsigned __int8 *)(a3;
- (BOOL)isEqual:(id)equal;
- (BOOL)setAccessControlList:(_acl *)list;
- (BOOL)setGroup:(unsigned int)group;
- (BOOL)setMode:(unsigned __int16)mode;
- (BOOL)setOwner:(unsigned int)owner;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation __NSFileSecurity

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  filesec = self->_filesec;
  if (filesec)
  {
    filesec_free(filesec);
  }

  v5.receiver = self;
  v5.super_class = __NSFileSecurity;
  [(__NSFileSecurity *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)__new:(_filesec *)__new
{
  result = __CFAllocateObject(self, 0);
  *(result + 1) = __new;
  return result;
}

- (BOOL)getOwner:(unsigned int *)owner
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  property = filesec_get_property(self->_filesec, FILESEC_OWNER, &v7);
  if (!property)
  {
    *owner = v7;
  }

  result = property == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)setOwner:(unsigned int)owner
{
  v6 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  result = filesec_set_property(self->_filesec, FILESEC_OWNER, &ownerCopy) == 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getGroup:(unsigned int *)group
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  property = filesec_get_property(self->_filesec, FILESEC_GROUP, &v7);
  if (!property)
  {
    *group = v7;
  }

  result = property == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)setGroup:(unsigned int)group
{
  v6 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  result = filesec_set_property(self->_filesec, FILESEC_GROUP, &groupCopy) == 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getMode:(unsigned __int16 *)mode
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  property = filesec_get_property(self->_filesec, FILESEC_MODE, &v7);
  if (!property)
  {
    *mode = v7;
  }

  result = property == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)setMode:(unsigned __int16)mode
{
  v6 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  result = filesec_set_property(self->_filesec, FILESEC_MODE, &modeCopy) == 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getOwnerUUID:(unsigned __int8 *)(a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0uLL;
  property = filesec_get_property(self->_filesec, FILESEC_UUID, &v7);
  if (!property)
  {
    *a3 = v7;
  }

  result = property == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getGroupUUID:(unsigned __int8 *)(a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0uLL;
  property = filesec_get_property(self->_filesec, FILESEC_GRPUUID, &v7);
  if (!property)
  {
    *a3 = v7;
  }

  result = property == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)copyAccessControlList:(_acl *)list
{
  acl[1] = *MEMORY[0x1E69E9840];
  acl[0] = 0;
  property = filesec_get_property(self->_filesec, FILESEC_ACL, acl);
  if (!property)
  {
    v5 = acl_dup(acl[0]);
    *list = v5;
    if (v5)
    {
      acl_free(acl[0]);
    }

    else
    {
      *list = acl[0];
    }
  }

  result = property == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)setAccessControlList:(_acl *)list
{
  v8[1] = *MEMORY[0x1E69E9840];
  filesec = self->_filesec;
  v8[0] = list;
  v4 = v8;
  if (!list)
  {
    v4 = 0;
  }

  if (list == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  result = filesec_set_property(filesec, FILESEC_ACL, v5) == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)clearProperties:(unint64_t)properties
{
  propertiesCopy = properties;
  if (properties)
  {
    v5 = filesec_unset_property(self->_filesec, FILESEC_OWNER) == 0;
    if ((propertiesCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 1;
  if ((properties & 2) != 0)
  {
LABEL_5:
    v5 &= filesec_unset_property(self->_filesec, FILESEC_GROUP) == 0;
  }

LABEL_6:
  if ((propertiesCopy & 4) != 0)
  {
    v5 &= filesec_unset_property(self->_filesec, FILESEC_MODE) == 0;
    if ((propertiesCopy & 8) == 0)
    {
LABEL_8:
      if ((propertiesCopy & 0x10) == 0)
      {
        goto LABEL_9;
      }

LABEL_14:
      v5 &= filesec_unset_property(self->_filesec, FILESEC_GRPUUID) == 0;
      if ((propertiesCopy & 0x20) == 0)
      {
        return v5;
      }

      return (filesec_unset_property(self->_filesec, FILESEC_ACL) == 0) & v5;
    }
  }

  else if ((propertiesCopy & 8) == 0)
  {
    goto LABEL_8;
  }

  v5 &= filesec_unset_property(self->_filesec, FILESEC_UUID) == 0;
  if ((propertiesCopy & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((propertiesCopy & 0x20) != 0)
  {
    return (filesec_unset_property(self->_filesec, FILESEC_ACL) == 0) & v5;
  }

  return v5;
}

- (unint64_t)hash
{
  selfCopy = self;
  v11[1] = *MEMORY[0x1E69E9840];
  _filesec = [(__NSFileSecurity *)self _filesec];
  if (_filesec)
  {
    v4 = _filesec;
    v11[0] = 0;
    v10[0] = 0;
    v10[1] = 0;
    v9 = 0;
    v7[1] = 0;
    obj_p = 0;
    v7[0] = 0;
    if (filesec_get_property(_filesec, FILESEC_OWNER, v11 + 4))
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = 3;
    }

    if (!filesec_get_property(v4, FILESEC_GROUP, v11))
    {
      selfCopy |= 4uLL;
    }

    if (!filesec_get_property(v4, FILESEC_UUID, v10))
    {
      selfCopy |= 8uLL;
    }

    if (!filesec_get_property(v4, FILESEC_MODE, &v9))
    {
      selfCopy |= 0x10uLL;
    }

    if (!filesec_get_property(v4, FILESEC_ACL, &obj_p))
    {
      acl_free(obj_p);
      selfCopy |= 0x20uLL;
    }

    if (!filesec_get_property(v4, FILESEC_GRPUUID, v7))
    {
      selfCopy |= 0x40uLL;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  v31 = *MEMORY[0x1E69E9840];
  if (self == equal)
  {
    v16 = 1;
    goto LABEL_35;
  }

  if (!equal || (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_34:
    v16 = 0;
    goto LABEL_35;
  }

  _filesec = [(__NSFileSecurity *)self _filesec];
  _filesec2 = [equal _filesec];
  v7 = _filesec2;
  if (!_filesec || !_filesec2)
  {
    v16 = (_filesec | _filesec2) == 0;
    goto LABEL_35;
  }

  LODWORD(acl) = 0;
  LODWORD(v27) = 0;
  property = filesec_get_property(_filesec, FILESEC_OWNER, &acl);
  if ((property == 0) == (filesec_get_property(v7, FILESEC_OWNER, &v27) != 0) || !property && acl != v27)
  {
    goto LABEL_34;
  }

  LODWORD(acl) = 0;
  LODWORD(v27) = 0;
  v9 = filesec_get_property(_filesec, FILESEC_GROUP, &acl);
  if ((v9 == 0) == (filesec_get_property(v7, FILESEC_GROUP, &v27) != 0) || !v9 && acl != v27)
  {
    goto LABEL_34;
  }

  LOWORD(acl) = 0;
  LOWORD(v27) = 0;
  v10 = filesec_get_property(_filesec, FILESEC_MODE, &acl);
  if ((v10 == 0) == (filesec_get_property(v7, FILESEC_MODE, &v27) != 0) || !v10 && acl != v27)
  {
    goto LABEL_34;
  }

  acl = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v11 = filesec_get_property(_filesec, FILESEC_UUID, &acl);
  if ((v11 == 0) == (filesec_get_property(v7, FILESEC_UUID, &v27) != 0))
  {
    goto LABEL_34;
  }

  if (!v11 && (acl != v27 || v30 != v28))
  {
    goto LABEL_34;
  }

  acl = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v12 = filesec_get_property(_filesec, FILESEC_GRPUUID, &acl);
  if ((v12 == 0) == (filesec_get_property(v7, FILESEC_GRPUUID, &v27) != 0))
  {
    goto LABEL_34;
  }

  if (!v12 && (acl != v27 || v30 != v28))
  {
    goto LABEL_34;
  }

  acl = 0;
  v27 = 0;
  v13 = filesec_get_property(_filesec, FILESEC_ACL, &acl);
  v14 = filesec_get_property(v7, FILESEC_ACL, &v27);
  v15 = v14;
  if (v14 | v13)
  {
    v16 = (v13 == 0) == (v14 == 0);
    if (v13)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v25 = 0;
  len_p = 0;
  v21 = acl_to_text(acl, &len_p);
  v22 = acl_to_text(v27, &v25);
  v23 = v22;
  if (v21 && v22)
  {
    v24 = len_p == v25 && memcmp(v21, v22, len_p) == 0;
    goto LABEL_43;
  }

  v24 = 0;
  v16 = 0;
  if (v21)
  {
LABEL_43:
    acl_free(v21);
    v16 = v24;
  }

  if (v23)
  {
    acl_free(v23);
  }

LABEL_46:
  acl_free(acl);
LABEL_47:
  if (!v15)
  {
    acl_free(v27);
  }

LABEL_35:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)description
{
  v31[1] = *MEMORY[0x1E69E9840];
  _filesec = [(__NSFileSecurity *)self _filesec];
  v4 = _filesec;
  if (_filesec)
  {
    v31[0] = 0;
    v30 = 0;
    *&v29.byte0 = 0;
    *&v29.byte8 = 0;
    *&v28.byte0 = 0;
    *&v28.byte8 = 0;
    acl = 0;
    property = filesec_get_property(_filesec, FILESEC_OWNER, v31 + 4);
    v6 = filesec_get_property(v4, FILESEC_GROUP, v31);
    v25 = filesec_get_property(v4, FILESEC_MODE, &v30);
    v7 = filesec_get_property(v4, FILESEC_UUID, &v29);
    v8 = filesec_get_property(v4, FILESEC_GRPUUID, &v28);
    v9 = filesec_get_property(v4, FILESEC_ACL, &acl);
    v10 = 0;
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        cf = 0;
        goto LABEL_7;
      }
    }

    else
    {
      v10 = CFUUIDCreateFromUUIDBytes(0, v29);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    cf = CFUUIDCreateFromUUIDBytes(0, v28);
LABEL_7:
    v23 = v9;
    if (v9)
    {
      v22 = 0;
      v11 = @"(null)";
      if (property)
      {
LABEL_9:
        v12 = @"(null)";
        goto LABEL_20;
      }
    }

    else
    {
      if (acl == 1)
      {
        v11 = @"_FILESEC_REMOVE_ACL";
      }

      else
      {
        len_p = 0;
        v13 = acl_to_text(acl, &len_p);
        if (v13)
        {
          v14 = v13;
          v15 = CFStringCreateWithBytes(0, v13, len_p, 0x8000100u, 0);
          acl_free(v14);
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          v11 = v15;
        }

        else
        {
          v11 = @"(acl_to_text failed)";
        }
      }

      v22 = v11;
      if (property)
      {
        goto LABEL_9;
      }
    }

    v12 = CFStringCreateWithFormat(0, 0, @"%d", HIDWORD(v31[0]));
LABEL_20:
    v16 = v6;
    if (v6)
    {
      v17 = @"(null)";
    }

    else
    {
      v17 = CFStringCreateWithFormat(0, 0, @"%d", LODWORD(v31[0]));
    }

    if (v25)
    {
      v18 = @"(null)";
    }

    else
    {
      v18 = CFStringCreateWithFormat(0, 0, @"%d", v30);
    }

    v19 = 0;
    if (v12 && v17 && v18)
    {
      v19 = CFStringCreateWithFormat(0, 0, @"<FileSecurity %p> [%p] {FILESEC_OWNER = %@, FILESEC_GROUP = %@, FILESEC_MODE = %@, FILESEC_UUID = %@, FILESEC_GRPUUID = %@, FILESEC_ACL = %@}", self, v4, v12, v17, v18, v10, cf, v11, v22);
    }

    if (!property && v12)
    {
      CFRelease(v12);
    }

    if (!v16 && v17)
    {
      CFRelease(v17);
    }

    if (!v25 && v18)
    {
      CFRelease(v18);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v23)
    {
      if (!v19)
      {
        goto LABEL_47;
      }
    }

    else
    {
      acl_free(acl);
      CFRelease(v22);
      if (!v19)
      {
        goto LABEL_47;
      }
    }

LABEL_48:
    result = _CFAutoreleasePoolAddObject(0, v19);
    goto LABEL_49;
  }

LABEL_47:
  result = CFStringCreateWithFormat(0, 0, @"<FileSecurity %p> [%p]", self, v4);
  v19 = result;
  if (result)
  {
    goto LABEL_48;
  }

LABEL_49:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = filesec_dup([(__NSFileSecurity *)self _filesec]);
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_class() allocWithZone:zone];

    return [v6 initWithFileSec:v5];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  len_p[1] = *MEMORY[0x1E69E9840];
  if (![coder allowsKeyedCoding])
  {
    objc_exception_throw([NSException exceptionWithName:@"NSInvalidArgumentException" reason:@"NSFileSecurity cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  _filesec = [(__NSFileSecurity *)self _filesec];
  acl = 0;
  len_p[0] = 0;
  if (!filesec_get_property(_filesec, FILESEC_ACL, &acl))
  {
    v9 = acl_to_text(acl, len_p);
    if (v9)
    {
      v10 = v9;
      v8 = len_p[0] + 65;
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, len_p[0] + 65, 3366679260, 0);
      if (Typed)
      {
        v7 = Typed;
        bzero(Typed, v8);
        *v7 = 0;
        strlcpy(v7 + 64, v10, len_p[0] + 1);
        *v7 |= 0x20u;
        free(v10);
        acl_free(acl);
        goto LABEL_8;
      }

      free(v10);
    }

    acl_free(acl);
    goto LABEL_21;
  }

  v6 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 72, 1781078706, 0);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  *(v6 + 64) = 0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *v6 = 0;
  v8 = 72;
  *(v6 + 64) = 0;
LABEL_8:
  v14 = 0;
  v13 = 0;
  if (!filesec_get_property(_filesec, FILESEC_OWNER, &v14 + 4))
  {
    *(v7 + 1) = HIDWORD(v14);
    *v7 |= 1u;
  }

  if (!filesec_get_property(_filesec, FILESEC_GROUP, &v14))
  {
    *(v7 + 2) = v14;
    *v7 |= 2u;
  }

  if (!filesec_get_property(_filesec, FILESEC_MODE, &v13))
  {
    *(v7 + 3) = v13;
    *v7 |= 0x10u;
  }

  if (!filesec_get_property(_filesec, FILESEC_UUID, v7 + 32))
  {
    *v7 |= 4u;
  }

  if (!filesec_get_property(_filesec, FILESEC_GRPUUID, v7 + 48))
  {
    *v7 |= 8u;
  }

  [coder encodeBytes:v7 length:v8 forKey:@"NS.filesec"];
  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v7);
LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
}

@end
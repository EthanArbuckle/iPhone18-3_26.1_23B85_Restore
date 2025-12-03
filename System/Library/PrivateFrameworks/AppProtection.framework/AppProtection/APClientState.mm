@interface APClientState
- (APClientState)init;
- (APClientState)initWithCoder:(id)coder;
- (APClientState)initWithLockedAppBundleIdentifiers:(id)identifiers hiddenAppBundleIdentifiers:(id)bundleIdentifiers effectivelyLockedBundleIdentifiers:(id)lockedBundleIdentifiers;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APClientState

- (APClientState)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v4 = [(APClientState *)self initWithLockedAppBundleIdentifiers:v3 hiddenAppBundleIdentifiers:v3 effectivelyLockedBundleIdentifiers:v3];

  return v4;
}

- (APClientState)initWithLockedAppBundleIdentifiers:(id)identifiers hiddenAppBundleIdentifiers:(id)bundleIdentifiers effectivelyLockedBundleIdentifiers:(id)lockedBundleIdentifiers
{
  identifiersCopy = identifiers;
  bundleIdentifiersCopy = bundleIdentifiers;
  lockedBundleIdentifiersCopy = lockedBundleIdentifiers;
  v19.receiver = self;
  v19.super_class = APClientState;
  v11 = [(APClientState *)&v19 init];
  if (v11)
  {
    v12 = [identifiersCopy copy];
    lockedAppBundleIdentifiers = v11->_lockedAppBundleIdentifiers;
    v11->_lockedAppBundleIdentifiers = v12;

    v14 = [bundleIdentifiersCopy copy];
    hiddenAppBundleIdentifiers = v11->_hiddenAppBundleIdentifiers;
    v11->_hiddenAppBundleIdentifiers = v14;

    v16 = [lockedBundleIdentifiersCopy copy];
    effectivelyLockedAppBundleIdentifiers = v11->_effectivelyLockedAppBundleIdentifiers;
    v11->_effectivelyLockedAppBundleIdentifiers = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_lockedAppBundleIdentifiers hash];
  v4 = [(NSSet *)self->_hiddenAppBundleIdentifiers hash]^ v3;
  return v4 ^ [(NSSet *)self->_effectivelyLockedAppBundleIdentifiers hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if ([v5[1] isEqual:self->_lockedAppBundleIdentifiers] && objc_msgSend(v5[2], "isEqual:", self->_hiddenAppBundleIdentifiers))
    {
      v6 = [v5[3] isEqual:self->_effectivelyLockedAppBundleIdentifiers];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (APClientState)initWithCoder:(id)coder
{
  v54 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(APClientState *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"lockedAppBundleIdentifiers"];
    lockedAppBundleIdentifiers = v5->_lockedAppBundleIdentifiers;
    v5->_lockedAppBundleIdentifiers = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"hiddenAppBundleIdentifiers"];
    hiddenAppBundleIdentifiers = v5->_hiddenAppBundleIdentifiers;
    v5->_hiddenAppBundleIdentifiers = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"effectivelyLockedAppBundleIdentifiers"];
    effectivelyLockedAppBundleIdentifiers = v5->_effectivelyLockedAppBundleIdentifiers;
    v5->_effectivelyLockedAppBundleIdentifiers = v19;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = v5->_hiddenAppBundleIdentifiers;
    v51[0] = v5->_lockedAppBundleIdentifiers;
    v51[1] = v21;
    v51[2] = v5->_effectivelyLockedAppBundleIdentifiers;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    v22 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v44;
      v42 = *MEMORY[0x1E696A250];
      v39 = *v44;
      do
      {
        v25 = 0;
        v40 = v23;
        do
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v43 + 1) + 8 * v25);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v5;
            v28 = coderCopy;
            v29 = v26;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v30 = v29;
            v31 = [v30 countByEnumeratingWithState:&v47 objects:v53 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v48;
              while (2)
              {
                v34 = 0;
                do
                {
                  if (*v48 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v47 + 1) + 8 * v34);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    coderCopy = v28;
                    v5 = v27;
                    v24 = v39;
                    v23 = v40;
                    goto LABEL_19;
                  }

                  ++v34;
                }

                while (v32 != v34);
                v32 = [v30 countByEnumeratingWithState:&v47 objects:v53 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }

            coderCopy = v28;
            v5 = v27;
            v24 = v39;
            v23 = v40;
          }

          else
          {

LABEL_19:
            v36 = _APMakeNSError(v42, 4864, "[APClientState initWithCoder:]", 86, 0);
            [coderCopy failWithError:v36];

            v5 = 0;
          }

          ++v25;
        }

        while (v25 != v23);
        v23 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v23);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lockedAppBundleIdentifiers = self->_lockedAppBundleIdentifiers;
  coderCopy = coder;
  [coderCopy encodeObject:lockedAppBundleIdentifiers forKey:@"lockedAppBundleIdentifiers"];
  [coderCopy encodeObject:self->_hiddenAppBundleIdentifiers forKey:@"hiddenAppBundleIdentifiers"];
  [coderCopy encodeObject:self->_effectivelyLockedAppBundleIdentifiers forKey:@"effectivelyLockedAppBundleIdentifiers"];
}

@end
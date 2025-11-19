@interface FPNSFileProviderItemHelper
- (BOOL)fp_isReadable;
- (BOOL)fp_isWritable;
- (id)fp_downloadingStatus;
- (id)fp_sharingCurrentUserPermissions;
- (id)fp_sharingCurrentUserRole;
@end

@implementation FPNSFileProviderItemHelper

- (id)fp_downloadingStatus
{
  if (objc_opt_respondsToSelector())
  {
    if ([(FPNSFileProviderItemHelper *)self isDownloaded])
    {
      v3 = objc_opt_respondsToSelector();
      v4 = MEMORY[0x1E695DC88];
      if ((v3 & 1) != 0 && ![(FPNSFileProviderItemHelper *)self isMostRecentVersionDownloaded])
      {
        v4 = MEMORY[0x1E695DC90];
      }
    }

    else
    {
      v4 = MEMORY[0x1E695DCA0];
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fp_isReadable
{
  if (objc_opt_respondsToSelector())
  {
    return [(FPNSFileProviderItemHelper *)self capabilities]& 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)fp_isWritable
{
  if (objc_opt_respondsToSelector())
  {
    return ([(FPNSFileProviderItemHelper *)self capabilities]>> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)fp_sharingCurrentUserRole
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(FPNSFileProviderItemHelper *)self isShared])
  {
    v3 = NSSelectorFromString(&cfstr_Shareditemrole.isa);
    if (objc_opt_respondsToSelector())
    {
      v4 = [(FPNSFileProviderItemHelper *)self performSelector:v3];
      if ([v4 isEqualToString:*MEMORY[0x1E696A738]])
      {
        v5 = MEMORY[0x1E695DD40];
LABEL_8:
        v6 = *v5;

        goto LABEL_14;
      }

      if ([v4 isEqualToString:*MEMORY[0x1E696A740]])
      {
        v5 = MEMORY[0x1E695DD48];
        goto LABEL_8;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      if ([(FPNSFileProviderItemHelper *)self isSharedByCurrentUser])
      {
        v7 = MEMORY[0x1E695DD40];
      }

      else
      {
        v7 = MEMORY[0x1E695DD48];
      }

      v6 = *v7;
      goto LABEL_14;
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)fp_sharingCurrentUserPermissions
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(FPNSFileProviderItemHelper *)self isShared])
  {
    v3 = [(FPNSFileProviderItemHelper *)self fp_isWritable];
    v4 = MEMORY[0x1E695DD30];
    if (!v3)
    {
      v4 = MEMORY[0x1E695DD28];
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
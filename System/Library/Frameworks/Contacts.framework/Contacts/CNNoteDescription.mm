@interface CNNoteDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNNoteDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  note = [contactCopy note];
  if (!note)
  {
    note2 = [otherCopy note];
    if (!note2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  note3 = [contactCopy note];
  note4 = [otherCopy note];
  v11 = [note3 isEqual:note4];

  if (!note)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_note"];

  v7 = [v9 copy];
  v8 = contactCopy[31];
  contactCopy[31] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A4D0];
  }

  return d != 0;
}

@end
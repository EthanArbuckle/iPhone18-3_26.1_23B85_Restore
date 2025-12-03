@interface CNCalendarURIsDescription
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNCalendarURIsDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  calendarURIs = [contactCopy calendarURIs];
  if (!calendarURIs)
  {
    calendarURIs2 = [otherCopy calendarURIs];
    if (!calendarURIs2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  calendarURIs3 = [contactCopy calendarURIs];
  calendarURIs4 = [otherCopy calendarURIs];
  v11 = [calendarURIs3 isEqual:calendarURIs4];

  if (!calendarURIs)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  contactCopy = contact;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_calendarURIs", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[56];
  contactCopy[56] = v10;
}

@end
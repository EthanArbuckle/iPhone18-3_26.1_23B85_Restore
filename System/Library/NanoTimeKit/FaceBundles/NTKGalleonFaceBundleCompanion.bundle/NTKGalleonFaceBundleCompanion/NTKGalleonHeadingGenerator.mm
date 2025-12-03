@interface NTKGalleonHeadingGenerator
+ (id)_compassDirectionForHeading:(unint64_t)heading;
+ (id)_generateHeadingStrings;
+ (id)sharedGenerator;
- (id)_init;
- (id)stringForHeading:(unint64_t)heading;
@end

@implementation NTKGalleonHeadingGenerator

+ (id)sharedGenerator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DD6F0);
  if (!WeakRetained)
  {
    v4 = [NTKGalleonHeadingGenerator alloc];
    WeakRetained = objc_msgSend__init(v4, v5, v6, v7);
    objc_storeWeak(&qword_27E1DD6F0, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = NTKGalleonHeadingGenerator;
  v5 = [(NTKGalleonHeadingGenerator *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend__generateHeadingStrings(NTKGalleonHeadingGenerator, v2, v3, v4);
    lookup = v5->_lookup;
    v5->_lookup = v6;
  }

  return v5;
}

- (id)stringForHeading:(unint64_t)heading
{
  if (heading == -1)
  {
    v8 = objc_msgSend_objectForKey_(self->_lookup, a2, &unk_284EA7A70, v3);
  }

  else
  {
    v5 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, heading % 0x168, v3);
    v8 = objc_msgSend_objectForKey_(self->_lookup, v6, v5, v7);
  }

  return v8;
}

+ (id)_generateHeadingStrings
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v10 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v7, @"GALLEON_HEADING_LABEL_FORMAT", @"%1$@°%2$@");
  for (i = 0; i != 360; ++i)
  {
    v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, i, v9);
    v15 = objc_msgSend__compassDirectionForHeading_(self, v13, i, v14);
    v18 = objc_msgSend_stringFromNumber_(v6, v16, v12, v17);
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, v10, v20, v18, v15);
    objc_msgSend_setObject_forKey_(v5, v22, v21, v12);
  }

  v23 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v8, @"GALLEON_UNKNOWN_HEADING", @"—° —");
  objc_msgSend_setObject_forKey_(v5, v24, v23, &unk_284EA7A70);
  v28 = objc_msgSend_copy(v5, v25, v26, v27);

  return v28;
}

+ (id)_compassDirectionForHeading:(unint64_t)heading
{
  if (heading <= 0x16)
  {
    goto LABEL_2;
  }

  if (heading > 0x42)
  {
    if (heading > 0x6F)
    {
      if (heading > 0x9C)
      {
        if (heading > 0xC9)
        {
          if (heading > 0xF6)
          {
            if (heading > 0x123)
            {
              if (heading > 0x150)
              {
LABEL_2:
                objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_NORTH", @"N");
                goto LABEL_17;
              }

              objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_NORTHWEST", @"NW");
            }

            else
            {
              objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_WEST", @"W");
            }
          }

          else
          {
            objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_SOUTHWEST", @"SW");
          }
        }

        else
        {
          objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_SOUTH", @"S");
        }
      }

      else
      {
        objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_SOUTHEAST", @"SE");
      }
    }

    else
    {
      objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_EAST", @"E");
    }
  }

  else
  {
    objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_LABEL_NORTHEAST", @"NE");
  }

  v3 = LABEL_17:;

  return v3;
}

@end
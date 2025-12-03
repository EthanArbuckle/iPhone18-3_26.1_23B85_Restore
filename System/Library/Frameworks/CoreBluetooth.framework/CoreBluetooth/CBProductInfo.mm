@interface CBProductInfo
+ (id)productInfoWithProductID:(unsigned int)d;
- (CBProductInfo)initWithProductInfoPtr:(id *)ptr;
@end

@implementation CBProductInfo

+ (id)productInfoWithProductID:(unsigned int)d
{
  v4 = [CBProductInfo alloc];
  if (d <= 8193)
  {
    if (d > 670)
    {
      if (d > 801)
      {
        switch(d)
        {
          case 0x322u:
            v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA284];

            break;
          case 0x323u:
            v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA165];

            break;
          case 0x324u:
            v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA287];

            break;
          default:
            goto LABEL_183;
        }
      }

      else
      {
        switch(d)
        {
          case 0x29Fu:
            v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA223];

            break;
          case 0x320u:
            v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA281];

            break;
          case 0x321u:
            v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA282];

            break;
          default:
            goto LABEL_183;
        }
      }
    }

    else if (d > 619)
    {
      switch(d)
      {
        case 0x26Cu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA211];

          break;
        case 0x29Au:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA222];

          break;
        case 0x29Cu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA222e];

          break;
        default:
          goto LABEL_183;
      }
    }

    else
    {
      switch(d)
      {
        case 0x265u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoD67];

          break;
        case 0x267u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA111];

          break;
        case 0x269u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoA125];

          break;
        default:
          goto LABEL_183;
      }
    }
  }

  else
  {
    if (d <= 21759)
    {
      switch(d)
      {
        case 0x2002u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB188];

          break;
        case 0x2003u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB312];

          break;
        case 0x2005u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB282];

          break;
        case 0x2006u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB352];

          break;
        case 0x2009u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB443];

          break;
        case 0x200Au:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB515];

          break;
        case 0x200Bu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB444];

          break;
        case 0x200Cu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB419];

          break;
        case 0x200Du:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB364];

          break;
        case 0x200Eu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB298];

          break;
        case 0x200Fu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB288];

          break;
        case 0x2010u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB372];

          break;
        case 0x2011u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB507];

          break;
        case 0x2012u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB494];

          break;
        case 0x2013u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB688];

          break;
        case 0x2014u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB698];

          break;
        case 0x2016u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB607];

          break;
        case 0x2017u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB453];

          break;
        case 0x2019u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB768E];

          break;
        case 0x201Au:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB487];

          break;
        case 0x201Bu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB768M];

          break;
        case 0x201Du:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB498];

          break;
        case 0x201Eu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB768CHE];

          break;
        case 0x201Fu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB515C];

          break;
        case 0x2020u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB768CHM];

          break;
        case 0x2024u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB698C];

          break;
        case 0x2025u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB465];

          break;
        case 0x2026u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB463];

          break;
        case 0x2027u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB788];

          break;
        case 0x2028u:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB788CH];

          break;
        case 0x202Fu:
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB494b];

          break;
        default:
          goto LABEL_183;
      }

      return v5;
    }

    if (d > 28942)
    {
      if (d > 29454)
      {
        if (d == 29455)
        {
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoJ305];
        }

        else
        {
          if (d != 29715)
          {
            goto LABEL_183;
          }

          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB520];
        }
      }

      else if (d == 28943)
      {
        v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB238A];
      }

      else
      {
        if (d != 28944)
        {
          goto LABEL_183;
        }

        v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB238];
      }
    }

    else if (d > 28419)
    {
      if (d == 28420)
      {
        v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoJ42];
      }

      else
      {
        if (d != 28936)
        {
          goto LABEL_183;
        }

        v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoJ105];
      }
    }

    else
    {
      if (d != 21760)
      {
        if (d == 22034)
        {
          v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB5612];

          return v5;
        }

LABEL_183:
        v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoInvalid];

        return v5;
      }

      v5 = [(CBProductInfo *)v4 initWithProductInfoPtr:&CBProductInfoB389];
    }
  }

  return v5;
}

- (CBProductInfo)initWithProductInfoPtr:(id *)ptr
{
  v8.receiver = self;
  v8.super_class = CBProductInfo;
  v4 = [(CBProductInfo *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_flags = ptr->var0;
    objc_storeStrong(&v4->_model, ptr->var1);
    v5->_productID = ptr->var2;
    objc_storeStrong(&v5->_productName, ptr->var3);
    v5->_radarComponentID = ptr->var4;
    objc_storeStrong(&v5->_sfSymbolNameCase, ptr->var5);
    objc_storeStrong(&v5->_sfSymbolNameMain, ptr->var6);
    v5->_vendorIDBluetooth = ptr->var7;
    v5->_vendorIDUSB = ptr->var8;
    v6 = v5;
  }

  return v5;
}

@end
uint64_t sub_1000A60F8(_BYTE *a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v4 = USBDescriptor.usbDescriptor()(a1, a2);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (v5 <= 0xE)
      {
        return sub_100112818(v4, &v4[v5]);
      }

      else
      {
        v6 = type metadata accessor for __DataStorage();
        v7 = *(v6 + 48);
        v8 = *(v6 + 52);
        swift_allocObject();
        __DataStorage.init(bytes:length:)();
        return v5 << 32;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (v2 - 77 < 8 || v2 == 74)
  {
    return sub_1001128D0(a1, *a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A61BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v19, 0, 14);
      goto LABEL_15;
    }

    v7 = *(a1 + 16);
    v8 = __DataStorage._bytes.getter();
    if (v8)
    {
      v9 = v8;
      v10 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v10))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v11 = (v7 - v10 + v9);
      __DataStorage._length.getter();
      if (v11)
      {
LABEL_13:
        v17 = v11;
        v18 = a3;
        return a4(v17, v18);
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
  {
    v19[0] = a1;
    LOWORD(v19[1]) = a2;
    BYTE2(v19[1]) = BYTE2(a2);
    BYTE3(v19[1]) = BYTE3(a2);
    BYTE4(v19[1]) = BYTE4(a2);
    BYTE5(v19[1]) = BYTE5(a2);
LABEL_15:
    v17 = v19;
    v18 = a3;
    return a4(v17, v18);
  }

  v12 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
LABEL_22:
    result = __DataStorage._length.getter();
    goto LABEL_23;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  if (__OFSUB__(v12, v15))
  {
    goto LABEL_19;
  }

  v11 = (v12 - v15 + v14);
  result = __DataStorage._length.getter();
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t USBDescriptor.usbDescriptor()(uint64_t a1, __int16 a2)
{
  result = 0;
  switch(HIBYTE(a2))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4B:
    case 0x4C:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t USBDescriptor.descriptorTypeName.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  v5 = type metadata accessor for Mirror();
  v21 = *(v5 - 8);
  v22 = v5;
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = &type metadata for USBDescriptor;
  v19 = a1;
  v23 = a1;
  LOBYTE(v24) = v2;
  v20 = v4;
  BYTE1(v24) = v4;
  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[4];
  v13 = v9[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v14 == result)
  {
    v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v16)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v17 = v23;
      v18 = v24;
      sub_10000CE78(v25);
      if (v18)
      {
LABEL_6:
        (*(v21 + 8))(v8, v22);
        return v17;
      }
    }

    v23 = v19;
    LOBYTE(v24) = v2;
    BYTE1(v24) = v20;
    v17 = String.init<A>(describing:)();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void USBDescriptor.hash(into:)(uint64_t a1, Swift::UInt a2, __int16 a3)
{
  switch(HIBYTE(a3))
  {
    case 1:
      v4 = 1;
      goto LABEL_89;
    case 2:
      v4 = 2;
      goto LABEL_89;
    case 3:
      v4 = 3;
      goto LABEL_89;
    case 4:
      v4 = 4;
      goto LABEL_89;
    case 5:
      v4 = 5;
      goto LABEL_89;
    case 6:
      v4 = 6;
      goto LABEL_89;
    case 7:
      v4 = 7;
      goto LABEL_89;
    case 8:
      v4 = 8;
      goto LABEL_89;
    case 9:
      v4 = 9;
      goto LABEL_89;
    case 0xA:
      v4 = 10;
      goto LABEL_89;
    case 0xB:
      v4 = 11;
      goto LABEL_89;
    case 0xC:
      v4 = 12;
      goto LABEL_89;
    case 0xD:
      v4 = 13;
      goto LABEL_89;
    case 0xE:
      v4 = 14;
      goto LABEL_89;
    case 0xF:
      v4 = 15;
      goto LABEL_89;
    case 0x10:
      v4 = 16;
      goto LABEL_89;
    case 0x11:
      v4 = 17;
      goto LABEL_89;
    case 0x12:
      v4 = 18;
      goto LABEL_89;
    case 0x13:
      v4 = 19;
      goto LABEL_89;
    case 0x14:
      v4 = 20;
      goto LABEL_89;
    case 0x15:
      v5 = 21;
      goto LABEL_68;
    case 0x16:
      v5 = 22;
LABEL_68:
      v6 = a3;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(a2);
      Hasher._combine(_:)(v6);
      return;
    case 0x17:
      v4 = 23;
      goto LABEL_89;
    case 0x18:
      v4 = 24;
      goto LABEL_89;
    case 0x19:
      v4 = 25;
      goto LABEL_89;
    case 0x1A:
      v4 = 26;
      goto LABEL_89;
    case 0x1B:
      v4 = 27;
      goto LABEL_89;
    case 0x1C:
      v4 = 28;
      goto LABEL_89;
    case 0x1D:
      v4 = 29;
      goto LABEL_89;
    case 0x1E:
      v4 = 30;
      goto LABEL_89;
    case 0x1F:
      v4 = 31;
      goto LABEL_89;
    case 0x20:
      v4 = 32;
      goto LABEL_89;
    case 0x21:
      v4 = 33;
      goto LABEL_89;
    case 0x22:
      v4 = 34;
      goto LABEL_89;
    case 0x23:
      v4 = 35;
      goto LABEL_89;
    case 0x24:
      v4 = 36;
      goto LABEL_89;
    case 0x25:
      v4 = 37;
      goto LABEL_89;
    case 0x26:
      v4 = 38;
      goto LABEL_89;
    case 0x27:
      v4 = 39;
      goto LABEL_89;
    case 0x28:
      v4 = 40;
      goto LABEL_89;
    case 0x29:
      v4 = 41;
      goto LABEL_89;
    case 0x2A:
      v4 = 42;
      goto LABEL_89;
    case 0x2B:
      v4 = 43;
      goto LABEL_89;
    case 0x2C:
      v4 = 44;
      goto LABEL_89;
    case 0x2D:
      v4 = 45;
      goto LABEL_89;
    case 0x2E:
      v4 = 46;
      goto LABEL_89;
    case 0x2F:
      v4 = 47;
      goto LABEL_89;
    case 0x30:
      v4 = 48;
      goto LABEL_89;
    case 0x31:
      v4 = 49;
      goto LABEL_89;
    case 0x32:
      v4 = 50;
      goto LABEL_89;
    case 0x33:
      v4 = 51;
      goto LABEL_89;
    case 0x34:
      v4 = 52;
      goto LABEL_89;
    case 0x35:
      v4 = 53;
      goto LABEL_89;
    case 0x36:
      v4 = 54;
      goto LABEL_89;
    case 0x37:
      v4 = 55;
      goto LABEL_89;
    case 0x38:
      v4 = 56;
      goto LABEL_89;
    case 0x39:
      v4 = 57;
      goto LABEL_89;
    case 0x3A:
      v4 = 58;
      goto LABEL_89;
    case 0x3B:
      v4 = 59;
      goto LABEL_89;
    case 0x3C:
      v4 = 60;
      goto LABEL_89;
    case 0x3D:
      v4 = 61;
      goto LABEL_89;
    case 0x3E:
      v4 = 62;
      goto LABEL_89;
    case 0x3F:
      v4 = 63;
      goto LABEL_89;
    case 0x40:
      v4 = 64;
      goto LABEL_89;
    case 0x41:
      v4 = 65;
      goto LABEL_89;
    case 0x42:
      v4 = 66;
      goto LABEL_89;
    case 0x43:
      v4 = 67;
      goto LABEL_89;
    case 0x44:
      v4 = 68;
      goto LABEL_89;
    case 0x45:
      v4 = 69;
      goto LABEL_89;
    case 0x46:
      v4 = 70;
      goto LABEL_89;
    case 0x47:
      v4 = 71;
      goto LABEL_89;
    case 0x48:
      v4 = 72;
      goto LABEL_89;
    case 0x49:
      v4 = 73;
      goto LABEL_89;
    case 0x4A:
      v4 = 74;
      goto LABEL_89;
    case 0x4B:
      v4 = 75;
      goto LABEL_89;
    case 0x4C:
      v4 = 76;
      goto LABEL_89;
    case 0x4D:
      v4 = 77;
      goto LABEL_89;
    case 0x4E:
      v4 = 78;
      goto LABEL_89;
    case 0x4F:
      v4 = 79;
      goto LABEL_89;
    case 0x50:
      v4 = 80;
      goto LABEL_89;
    case 0x51:
      v4 = 81;
      goto LABEL_89;
    case 0x52:
      v4 = 82;
      goto LABEL_89;
    case 0x53:
      v4 = 83;
      goto LABEL_89;
    case 0x54:
      v4 = 84;
      goto LABEL_89;
    case 0x55:
      v4 = 85;
      goto LABEL_89;
    default:
      v4 = 0;
LABEL_89:
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(a2);
      return;
  }
}

Swift::Int USBDescriptor.hashValue.getter(Swift::UInt a1, __int16 a2)
{
  Hasher.init(_seed:)();
  USBDescriptor.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000A6BC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  USBDescriptor.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000A6C24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  USBDescriptor.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

void USBDescriptorControl.hash(into:)(uint64_t a1, unsigned int a2)
{
  switch((a2 >> 18) & 0x3C | (a2 >> 6))
  {
    case 1u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 1;
      goto LABEL_58;
    case 2u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 2;
      goto LABEL_58;
    case 3u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 3;
      goto LABEL_58;
    case 4u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 4;
      goto LABEL_58;
    case 5u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 5;
      goto LABEL_58;
    case 6u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 6;
      goto LABEL_58;
    case 7u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 7;
      goto LABEL_58;
    case 8u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 8;
      goto LABEL_58;
    case 9u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 9;
      goto LABEL_58;
    case 0xAu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 10;
      goto LABEL_58;
    case 0xBu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 11;
      goto LABEL_58;
    case 0xCu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 12;
      goto LABEL_58;
    case 0xDu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 13;
      goto LABEL_58;
    case 0xEu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 14;
      goto LABEL_58;
    case 0xFu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 15;
      goto LABEL_58;
    case 0x10u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 16;
      goto LABEL_58;
    case 0x11u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 17;
      goto LABEL_58;
    case 0x12u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 18;
      goto LABEL_58;
    case 0x13u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 19;
      goto LABEL_58;
    case 0x14u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 20;
      goto LABEL_58;
    case 0x15u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 21;
      goto LABEL_58;
    case 0x16u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 22;
      goto LABEL_58;
    case 0x17u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 23;
      goto LABEL_58;
    case 0x18u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 24;
      goto LABEL_58;
    case 0x19u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 25;
      goto LABEL_58;
    case 0x1Au:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 26;
      goto LABEL_58;
    case 0x1Bu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 27;
      goto LABEL_58;
    case 0x1Cu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 28;
      goto LABEL_58;
    case 0x1Du:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 29;
      goto LABEL_58;
    case 0x1Eu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 30;
      goto LABEL_58;
    case 0x1Fu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 31;
      goto LABEL_58;
    case 0x20u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 32;
      goto LABEL_58;
    case 0x21u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 33;
      goto LABEL_58;
    case 0x22u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 34;
      goto LABEL_58;
    case 0x23u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 35;
      goto LABEL_58;
    case 0x24u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 36;
      goto LABEL_58;
    case 0x25u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 37;
      goto LABEL_58;
    case 0x26u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 38;
      goto LABEL_58;
    case 0x27u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 39;
      goto LABEL_58;
    case 0x28u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 40;
      goto LABEL_58;
    case 0x29u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 41;
      goto LABEL_58;
    case 0x2Au:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 42;
      goto LABEL_58;
    case 0x2Bu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 43;
      goto LABEL_58;
    case 0x2Cu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 44;
      goto LABEL_58;
    case 0x2Du:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 45;
      goto LABEL_58;
    case 0x2Eu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 46;
      goto LABEL_58;
    case 0x2Fu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 47;
      goto LABEL_58;
    case 0x30u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 48;
      goto LABEL_58;
    case 0x31u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 49;
      goto LABEL_58;
    case 0x32u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 50;
      goto LABEL_58;
    case 0x33u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 51;
      goto LABEL_58;
    case 0x34u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 52;
      goto LABEL_58;
    case 0x35u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 53;
      goto LABEL_58;
    case 0x36u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 54;
      goto LABEL_58;
    case 0x37u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 55;
LABEL_58:
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(a2 & 1);
      Hasher._combine(_:)(v4);
      break;
    default:
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(a2 & 1);
      Hasher._combine(_:)(BYTE1(a2));
      v3 = BYTE2(a2);
      break;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int USBDescriptorControl.hashValue.getter(int a1)
{
  Hasher.init(_seed:)();
  USBDescriptorControl.hash(into:)(v3, a1 & 0xFFFFFF);
  return Hasher._finalize()();
}

Swift::Int sub_1000A71EC()
{
  v1 = *v0 | (*(v0 + 2) << 16);
  Hasher.init(_seed:)();
  USBDescriptorControl.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A724C()
{
  v1 = *v0 | (*(v0 + 2) << 16);
  Hasher.init(_seed:)();
  USBDescriptorControl.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000A72B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_100104A68(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000A7DA0(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000A7DA0(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_100104A68(v8, v4, a3);
}

uint64_t sub_1000A73D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1001056AC(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000A7E34(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000A7E34(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1001056AC(v8, v4, a3);
}

uint64_t sub_1000A74F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E7B44(v7, v13, a3);
}

uint64_t sub_1000A7588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E7DA4(v7, v13, a3);
}

uint64_t sub_1000A761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008B268(v7, v13, a3);
}

uint64_t sub_1000A76B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008BAE0(v7, v13, a3);
}

uint64_t sub_1000A7744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008D824(v7, v13, a3);
}

uint64_t sub_1000A77D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008F534(v7, v13, a3);
}

uint64_t sub_1000A786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DD0B4(v7, v13, a3);
}

uint64_t sub_1000A7900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DD314(v7, v13, a3);
}

uint64_t sub_1000A7994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DE238(v7, v13, a3);
}

uint64_t sub_1000A7A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DEF88(v7, v13, a3);
}

uint64_t sub_1000A7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E0ED4(v7, v13, a3);
}

uint64_t sub_1000A7B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E1CE0(v7, v13, a3);
}

uint64_t sub_1000A7BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_100105E88(v7, v13, a3);
}

uint64_t sub_1000A7C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1001060E8(v7, v13, a3);
}

uint64_t sub_1000A7D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_100103C58(v7, v13, a3);
}

uint64_t sub_1000A7DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_100104A68(v7, v13, a3);
}

uint64_t sub_1000A7E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1001056AC(v7, v13, a3);
}

BOOL _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  switch(HIBYTE(a2))
  {
    case 1:
      v4 = HIBYTE(a4) == 1;
      return v4 && a1 == a3;
    case 2:
      v4 = HIBYTE(a4) == 2;
      return v4 && a1 == a3;
    case 3:
      v4 = HIBYTE(a4) == 3;
      return v4 && a1 == a3;
    case 4:
      v4 = HIBYTE(a4) == 4;
      return v4 && a1 == a3;
    case 5:
      v4 = HIBYTE(a4) == 5;
      return v4 && a1 == a3;
    case 6:
      v4 = HIBYTE(a4) == 6;
      return v4 && a1 == a3;
    case 7:
      v4 = HIBYTE(a4) == 7;
      return v4 && a1 == a3;
    case 8:
      v4 = HIBYTE(a4) == 8;
      return v4 && a1 == a3;
    case 9:
      v4 = HIBYTE(a4) == 9;
      return v4 && a1 == a3;
    case 0xA:
      v4 = HIBYTE(a4) == 10;
      return v4 && a1 == a3;
    case 0xB:
      v4 = HIBYTE(a4) == 11;
      return v4 && a1 == a3;
    case 0xC:
      v4 = HIBYTE(a4) == 12;
      return v4 && a1 == a3;
    case 0xD:
      v4 = HIBYTE(a4) == 13;
      return v4 && a1 == a3;
    case 0xE:
      v4 = HIBYTE(a4) == 14;
      return v4 && a1 == a3;
    case 0xF:
      v4 = HIBYTE(a4) == 15;
      return v4 && a1 == a3;
    case 0x10:
      v4 = HIBYTE(a4) == 16;
      return v4 && a1 == a3;
    case 0x11:
      v4 = HIBYTE(a4) == 17;
      return v4 && a1 == a3;
    case 0x12:
      v4 = HIBYTE(a4) == 18;
      return v4 && a1 == a3;
    case 0x13:
      v4 = HIBYTE(a4) == 19;
      return v4 && a1 == a3;
    case 0x14:
      v4 = HIBYTE(a4) == 20;
      return v4 && a1 == a3;
    case 0x15:
      v5 = HIBYTE(a4) == 21;
      return v5 && a1 == a3 && a2 == a4;
    case 0x16:
      v5 = HIBYTE(a4) == 22;
      return v5 && a1 == a3 && a2 == a4;
    case 0x17:
      v4 = HIBYTE(a4) == 23;
      return v4 && a1 == a3;
    case 0x18:
      v4 = HIBYTE(a4) == 24;
      return v4 && a1 == a3;
    case 0x19:
      v4 = HIBYTE(a4) == 25;
      return v4 && a1 == a3;
    case 0x1A:
      v4 = HIBYTE(a4) == 26;
      return v4 && a1 == a3;
    case 0x1B:
      v4 = HIBYTE(a4) == 27;
      return v4 && a1 == a3;
    case 0x1C:
      v4 = HIBYTE(a4) == 28;
      return v4 && a1 == a3;
    case 0x1D:
      v4 = HIBYTE(a4) == 29;
      return v4 && a1 == a3;
    case 0x1E:
      v4 = HIBYTE(a4) == 30;
      return v4 && a1 == a3;
    case 0x1F:
      v4 = HIBYTE(a4) == 31;
      return v4 && a1 == a3;
    case 0x20:
      v4 = HIBYTE(a4) == 32;
      return v4 && a1 == a3;
    case 0x21:
      v4 = HIBYTE(a4) == 33;
      return v4 && a1 == a3;
    case 0x22:
      v4 = HIBYTE(a4) == 34;
      return v4 && a1 == a3;
    case 0x23:
      v4 = HIBYTE(a4) == 35;
      return v4 && a1 == a3;
    case 0x24:
      v4 = HIBYTE(a4) == 36;
      return v4 && a1 == a3;
    case 0x25:
      v4 = HIBYTE(a4) == 37;
      return v4 && a1 == a3;
    case 0x26:
      v4 = HIBYTE(a4) == 38;
      return v4 && a1 == a3;
    case 0x27:
      v4 = HIBYTE(a4) == 39;
      return v4 && a1 == a3;
    case 0x28:
      v4 = HIBYTE(a4) == 40;
      return v4 && a1 == a3;
    case 0x29:
      v4 = HIBYTE(a4) == 41;
      return v4 && a1 == a3;
    case 0x2A:
      v4 = HIBYTE(a4) == 42;
      return v4 && a1 == a3;
    case 0x2B:
      v4 = HIBYTE(a4) == 43;
      return v4 && a1 == a3;
    case 0x2C:
      v4 = HIBYTE(a4) == 44;
      return v4 && a1 == a3;
    case 0x2D:
      v4 = HIBYTE(a4) == 45;
      return v4 && a1 == a3;
    case 0x2E:
      v4 = HIBYTE(a4) == 46;
      return v4 && a1 == a3;
    case 0x2F:
      v4 = HIBYTE(a4) == 47;
      return v4 && a1 == a3;
    case 0x30:
      v4 = HIBYTE(a4) == 48;
      return v4 && a1 == a3;
    case 0x31:
      v4 = HIBYTE(a4) == 49;
      return v4 && a1 == a3;
    case 0x32:
      v4 = HIBYTE(a4) == 50;
      return v4 && a1 == a3;
    case 0x33:
      v4 = HIBYTE(a4) == 51;
      return v4 && a1 == a3;
    case 0x34:
      v4 = HIBYTE(a4) == 52;
      return v4 && a1 == a3;
    case 0x35:
      v4 = HIBYTE(a4) == 53;
      return v4 && a1 == a3;
    case 0x36:
      v4 = HIBYTE(a4) == 54;
      return v4 && a1 == a3;
    case 0x37:
      v4 = HIBYTE(a4) == 55;
      return v4 && a1 == a3;
    case 0x38:
      v4 = HIBYTE(a4) == 56;
      return v4 && a1 == a3;
    case 0x39:
      v4 = HIBYTE(a4) == 57;
      return v4 && a1 == a3;
    case 0x3A:
      v4 = HIBYTE(a4) == 58;
      return v4 && a1 == a3;
    case 0x3B:
      v4 = HIBYTE(a4) == 59;
      return v4 && a1 == a3;
    case 0x3C:
      v4 = HIBYTE(a4) == 60;
      return v4 && a1 == a3;
    case 0x3D:
      v4 = HIBYTE(a4) == 61;
      return v4 && a1 == a3;
    case 0x3E:
      v4 = HIBYTE(a4) == 62;
      return v4 && a1 == a3;
    case 0x3F:
      v4 = HIBYTE(a4) == 63;
      return v4 && a1 == a3;
    case 0x40:
      v4 = HIBYTE(a4) == 64;
      return v4 && a1 == a3;
    case 0x41:
      v4 = HIBYTE(a4) == 65;
      return v4 && a1 == a3;
    case 0x42:
      v4 = HIBYTE(a4) == 66;
      return v4 && a1 == a3;
    case 0x43:
      v4 = HIBYTE(a4) == 67;
      return v4 && a1 == a3;
    case 0x44:
      v4 = HIBYTE(a4) == 68;
      return v4 && a1 == a3;
    case 0x45:
      v4 = HIBYTE(a4) == 69;
      return v4 && a1 == a3;
    case 0x46:
      v4 = HIBYTE(a4) == 70;
      return v4 && a1 == a3;
    case 0x47:
      v4 = HIBYTE(a4) == 71;
      return v4 && a1 == a3;
    case 0x48:
      v4 = HIBYTE(a4) == 72;
      return v4 && a1 == a3;
    case 0x49:
      v4 = HIBYTE(a4) == 73;
      return v4 && a1 == a3;
    case 0x4A:
      v4 = HIBYTE(a4) == 74;
      return v4 && a1 == a3;
    case 0x4B:
      v4 = HIBYTE(a4) == 75;
      return v4 && a1 == a3;
    case 0x4C:
      v4 = HIBYTE(a4) == 76;
      return v4 && a1 == a3;
    case 0x4D:
      v4 = HIBYTE(a4) == 77;
      return v4 && a1 == a3;
    case 0x4E:
      v4 = HIBYTE(a4) == 78;
      return v4 && a1 == a3;
    case 0x4F:
      v4 = HIBYTE(a4) == 79;
      return v4 && a1 == a3;
    case 0x50:
      v4 = HIBYTE(a4) == 80;
      return v4 && a1 == a3;
    case 0x51:
      v4 = HIBYTE(a4) == 81;
      return v4 && a1 == a3;
    case 0x52:
      v4 = HIBYTE(a4) == 82;
      return v4 && a1 == a3;
    case 0x53:
      v4 = HIBYTE(a4) == 83;
      return v4 && a1 == a3;
    case 0x54:
      v4 = HIBYTE(a4) == 84;
      return v4 && a1 == a3;
    case 0x55:
      v4 = HIBYTE(a4) == 85;
      return v4 && a1 == a3;
    default:
      v4 = HIBYTE(a4) == 0;
      return v4 && a1 == a3;
  }
}

BOOL sub_1000A8314(unsigned int a1, unsigned int a2)
{
  v2 = (a2 >> 18) & 0x3C | (a2 >> 6);
  switch((a1 >> 18) & 0x3C | (a1 >> 6))
  {
    case 1u:
      v57 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v58 = BYTE1(a1) == BYTE1(a2) && v57;
      result = v2 == 1 && v58;
      break;
    case 2u:
      v49 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v50 = BYTE1(a1) == BYTE1(a2) && v49;
      result = v2 == 2 && v50;
      break;
    case 3u:
      v53 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v54 = BYTE1(a1) == BYTE1(a2) && v53;
      result = v2 == 3 && v54;
      break;
    case 4u:
      v37 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v38 = BYTE1(a1) == BYTE1(a2) && v37;
      result = v2 == 4 && v38;
      break;
    case 5u:
      v67 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v68 = BYTE1(a1) == BYTE1(a2) && v67;
      result = v2 == 5 && v68;
      break;
    case 6u:
      v73 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v74 = BYTE1(a1) == BYTE1(a2) && v73;
      result = v2 == 6 && v74;
      break;
    case 7u:
      v55 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v56 = BYTE1(a1) == BYTE1(a2) && v55;
      result = v2 == 7 && v56;
      break;
    case 8u:
      v79 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v80 = BYTE1(a1) == BYTE1(a2) && v79;
      result = v2 == 8 && v80;
      break;
    case 9u:
      v43 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v44 = BYTE1(a1) == BYTE1(a2) && v43;
      result = v2 == 9 && v44;
      break;
    case 0xAu:
      v77 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v78 = BYTE1(a1) == BYTE1(a2) && v77;
      result = v2 == 10 && v78;
      break;
    case 0xBu:
      v33 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v34 = BYTE1(a1) == BYTE1(a2) && v33;
      result = v2 == 11 && v34;
      break;
    case 0xCu:
      v41 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v42 = BYTE1(a1) == BYTE1(a2) && v41;
      result = v2 == 12 && v42;
      break;
    case 0xDu:
      v71 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v72 = BYTE1(a1) == BYTE1(a2) && v71;
      result = v2 == 13 && v72;
      break;
    case 0xEu:
      v27 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v28 = BYTE1(a1) == BYTE1(a2) && v27;
      result = v2 == 14 && v28;
      break;
    case 0xFu:
      v51 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v52 = BYTE1(a1) == BYTE1(a2) && v51;
      result = v2 == 15 && v52;
      break;
    case 0x10u:
      v23 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v24 = BYTE1(a1) == BYTE1(a2) && v23;
      result = v2 == 16 && v24;
      break;
    case 0x11u:
      v61 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v62 = BYTE1(a1) == BYTE1(a2) && v61;
      result = v2 == 17 && v62;
      break;
    case 0x12u:
      v75 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v76 = BYTE1(a1) == BYTE1(a2) && v75;
      result = v2 == 18 && v76;
      break;
    case 0x13u:
      v91 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v92 = BYTE1(a1) == BYTE1(a2) && v91;
      result = v2 == 19 && v92;
      break;
    case 0x14u:
      v65 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v66 = BYTE1(a1) == BYTE1(a2) && v65;
      result = v2 == 20 && v66;
      break;
    case 0x15u:
      v69 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v70 = BYTE1(a1) == BYTE1(a2) && v69;
      result = v2 == 21 && v70;
      break;
    case 0x16u:
      v87 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v88 = BYTE1(a1) == BYTE1(a2) && v87;
      result = v2 == 22 && v88;
      break;
    case 0x17u:
      v95 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v96 = BYTE1(a1) == BYTE1(a2) && v95;
      result = v2 == 23 && v96;
      break;
    case 0x18u:
      v47 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v48 = BYTE1(a1) == BYTE1(a2) && v47;
      result = v2 == 24 && v48;
      break;
    case 0x19u:
      v45 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v46 = BYTE1(a1) == BYTE1(a2) && v45;
      result = v2 == 25 && v46;
      break;
    case 0x1Au:
      v103 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v104 = BYTE1(a1) == BYTE1(a2) && v103;
      result = v2 == 26 && v104;
      break;
    case 0x1Bu:
      v19 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v20 = BYTE1(a1) == BYTE1(a2) && v19;
      result = v2 == 27 && v20;
      break;
    case 0x1Cu:
      v97 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v98 = BYTE1(a1) == BYTE1(a2) && v97;
      result = v2 == 28 && v98;
      break;
    case 0x1Du:
      v99 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v100 = BYTE1(a1) == BYTE1(a2) && v99;
      result = v2 == 29 && v100;
      break;
    case 0x1Eu:
      v81 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v82 = BYTE1(a1) == BYTE1(a2) && v81;
      result = v2 == 30 && v82;
      break;
    case 0x1Fu:
      v59 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v60 = BYTE1(a1) == BYTE1(a2) && v59;
      result = v2 == 31 && v60;
      break;
    case 0x20u:
      v83 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v84 = BYTE1(a1) == BYTE1(a2) && v83;
      result = v2 == 32 && v84;
      break;
    case 0x21u:
      v29 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v30 = BYTE1(a1) == BYTE1(a2) && v29;
      result = v2 == 33 && v30;
      break;
    case 0x22u:
      v21 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v22 = BYTE1(a1) == BYTE1(a2) && v21;
      result = v2 == 34 && v22;
      break;
    case 0x23u:
      v15 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v16 = BYTE1(a1) == BYTE1(a2) && v15;
      result = v2 == 35 && v16;
      break;
    case 0x24u:
      v17 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v18 = BYTE1(a1) == BYTE1(a2) && v17;
      result = v2 == 36 && v18;
      break;
    case 0x25u:
      v9 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v10 = BYTE1(a1) == BYTE1(a2) && v9;
      result = v2 == 37 && v10;
      break;
    case 0x26u:
      v101 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v102 = BYTE1(a1) == BYTE1(a2) && v101;
      result = v2 == 38 && v102;
      break;
    case 0x27u:
      v89 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v90 = BYTE1(a1) == BYTE1(a2) && v89;
      result = v2 == 39 && v90;
      break;
    case 0x28u:
      v39 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v40 = BYTE1(a1) == BYTE1(a2) && v39;
      result = v2 == 40 && v40;
      break;
    case 0x29u:
      v63 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v64 = BYTE1(a1) == BYTE1(a2) && v63;
      result = v2 == 41 && v64;
      break;
    case 0x2Au:
      v93 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v94 = BYTE1(a1) == BYTE1(a2) && v93;
      result = v2 == 42 && v94;
      break;
    case 0x2Bu:
      v7 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v8 = BYTE1(a1) == BYTE1(a2) && v7;
      result = v2 == 43 && v8;
      break;
    case 0x2Cu:
      v25 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v26 = BYTE1(a1) == BYTE1(a2) && v25;
      result = v2 == 44 && v26;
      break;
    case 0x2Du:
      v85 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v86 = BYTE1(a1) == BYTE1(a2) && v85;
      result = v2 == 45 && v86;
      break;
    case 0x2Eu:
      v111 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v112 = BYTE1(a1) == BYTE1(a2) && v111;
      result = v2 == 46 && v112;
      break;
    case 0x2Fu:
      v13 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v14 = BYTE1(a1) == BYTE1(a2) && v13;
      result = v2 == 47 && v14;
      break;
    case 0x30u:
      v31 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v32 = BYTE1(a1) == BYTE1(a2) && v31;
      result = v2 == 48 && v32;
      break;
    case 0x31u:
      v35 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v36 = BYTE1(a1) == BYTE1(a2) && v35;
      result = v2 == 49 && v36;
      break;
    case 0x32u:
      v5 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v6 = BYTE1(a1) == BYTE1(a2) && v5;
      result = v2 == 50 && v6;
      break;
    case 0x33u:
      v113 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v114 = BYTE1(a1) == BYTE1(a2) && v113;
      result = v2 == 51 && v114;
      break;
    case 0x34u:
      v109 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v110 = BYTE1(a1) == BYTE1(a2) && v109;
      result = v2 == 52 && v110;
      break;
    case 0x35u:
      v11 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v12 = BYTE1(a1) == BYTE1(a2) && v11;
      result = v2 == 53 && v12;
      break;
    case 0x36u:
      v105 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v106 = BYTE1(a1) == BYTE1(a2) && v105;
      result = v2 == 54 && v106;
      break;
    case 0x37u:
      v107 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v108 = BYTE1(a1) == BYTE1(a2) && v107;
      result = v2 == 55 && v108;
      break;
    default:
      v3 = BYTE1(a1) == BYTE1(a2) && ((a2 ^ a1) & 0xFF0000) == 0;
      if ((a2 ^ a1))
      {
        v3 = 0;
      }

      if (v2)
      {
        result = 0;
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

unint64_t sub_1000A8EB4()
{
  result = qword_1001774A0;
  if (!qword_1001774A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774A0);
  }

  return result;
}

unint64_t sub_1000A8F0C()
{
  result = qword_1001774A8;
  if (!qword_1001774A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774A8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for USBDescriptor(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for USBDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB && *(a1 + 10))
  {
    return (*a1 + 171);
  }

  v3 = *(a1 + 9);
  if (v3 <= 0x55)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for USBDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAA)
  {
    *(result + 8) = 0;
    *result = a2 - 171;
    if (a3 >= 0xAB)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xAB)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for USBDescriptorControl(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C9)
  {
    if ((a2 + 33552439) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16775223;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16775223;
      }
    }
  }

  v4 = ((((8 * *(a1 + 2)) & 0x780 | (*a1 >> 1)) >> 5) & 0xFFFFF83F | (((*a1 >> 1) & 0x1F) << 6)) ^ 0x7FF;
  if (v4 >= 0x7C8)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t storeEnumTagSinglePayload for USBDescriptorControl(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33552439) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0x7C8)
  {
    v3 = 0;
  }

  if (a2 > 0x7C8)
  {
    *result = a2 - 1993;
    *(result + 2) = (a2 - 1993) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1993) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = (-a2 >> 5) & 0x3E | ((-a2 & 0x7FF) << 6) & 0xFE;
      *(result + 2) = ((((-a2 >> 5) & 0x3E | ((-a2 & 0x7FF) << 6)) - (a2 << 18)) & 0xF000FE) >> 16;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unsigned __int16 *sub_1000A9174(unsigned __int16 *result)
{
  v1 = *result | (*(result + 2) << 16);
  *result &= 0xFF3Fu;
  *(result + 2) = BYTE2(v1) & 0xF;
  return result;
}

unsigned __int16 *sub_1000A9198(unsigned __int16 *result, int a2)
{
  v2 = ((a2 << 18) | ((a2 & 3) << 6)) & 0xF000F0 | (*result | (*(result + 2) << 16)) & 0xFFF01;
  *result = ((a2 & 3) << 6) | *result & 0xFF01;
  *(result + 2) = BYTE2(v2);
  return result;
}

_BYTE *sub_1000A91DC(_BYTE *result)
{
  v1 = result[6];
  if (v1 != 3)
  {
    if (v1 == 2)
    {
      v2 = result[7];
      if (v2 == 48)
      {
        v3 = result[3] == 0;
        return result;
      }

      if (v2 == 32)
      {
        v3 = result[3] == 0;
        return result;
      }

      if (!result[7])
      {
        v3 = result[3] == 0;
        return result;
      }

      v4 = 47;
    }

    else
    {
      if (v1 == 1)
      {
        if (!result[3])
        {
          result[7];
          result[7];
        }

        return result;
      }

      v4 = 48;
    }

    sub_10000CA2C();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000A92FC(uint64_t result, char a2)
{
  if (a2 == 48)
  {
    if (*(result + 1) == 36 && (*(result + 2) - 1) < 0x10u)
    {
      v4 = byte_100123F80[(*(result + 2) - 1)];
    }
  }

  else if (a2 == 32)
  {
    if (*(result + 1) == 36)
    {
      v3 = *(result + 2);
    }
  }

  else if (a2)
  {
    sub_10000CA2C();
    swift_allocError();
    *v5 = 47;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  else if (*(result + 1) == 36)
  {
    v2 = *(result + 2);
  }

  return result;
}

unsigned __int8 *sub_1000A940C(unsigned __int8 *result, char a2)
{
  if (a2 == 48)
  {
    v4 = result[1];
    if (v4 == 37)
    {
      v5 = result[2] == 1;
    }

    else if (v4 == 36)
    {
      v5 = result[2] == 1;
    }
  }

  else if (a2 == 32)
  {
    v3 = result[1];
    if (v3 == 37)
    {
      v5 = result[2] == 1;
    }

    else if (v3 == 36)
    {
      result[2];
    }
  }

  else if (a2)
  {
    sub_10000CA2C();
    swift_allocError();
    *v6 = 47;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    v2 = result[1];
    if (v2 == 37)
    {
      v5 = result[2] == 1;
    }

    else if (v2 == 36 && result[2] == 2)
    {
      v5 = result[3] == 1;
    }
  }

  return result;
}

unsigned __int8 *sub_1000A95A4(uint64_t a1, __int16 a2)
{
  v4 = *(*(type metadata accessor for LogID(0) - 8) + 64);
  result = __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = result[1];
  if (v9 > 0xA)
  {
    if (v9 == 49 || v9 == 48 || v9 == 11)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v9 == 4)
  {
    if (result[5] == 1)
    {
      return sub_1000A91DC(result);
    }

    else if (result[3] && HIBYTE(a2) != 255 && (a2 & 0xFF00) == 0x100)
    {
      result[7];
    }
  }

  else
  {
    if (v9 != 5)
    {
LABEL_21:
      if (HIBYTE(a2) != 255)
      {
        if (HIBYTE(a2) == 1)
        {
          return sub_1000A940C(result, a2);
        }

        else if (!HIBYTE(a2))
        {
          return sub_1000A92FC(result, a2);
        }
      }

      return result;
    }

    if (*result == 9)
    {
      if (HIBYTE(a2) != 255)
      {
        if (HIBYTE(a2) > 1u)
        {
          if (HIBYTE(a2) == 2)
          {
            return result;
          }
        }

        else if (!a2)
        {
          return result;
        }
      }

      v10 = result;
      if (qword_100173CB8 != -1)
      {
        v13 = v6;
        swift_once();
        v6 = v13;
      }

      v11 = sub_10000A1BC(v6, qword_1001794F0);
      sub_10000A2A4(v11, v8);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v12, qword_100179508);
      sub_100039F58(1, v8, 0xD000000000000027, 0x800000010012EED0);
      sub_10000C9D0(v8);
      return v10;
    }
  }

  return result;
}

uint64_t sub_1000A9878(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100176880, &qword_100122158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A98E8(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100176880, &qword_100122158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A99A4()
{
  result = qword_1001774B0;
  if (!qword_1001774B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774B0);
  }

  return result;
}

unint64_t sub_1000A9A50()
{
  result = qword_1001774B8;
  if (!qword_1001774B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774B8);
  }

  return result;
}

uint64_t sub_1000A9AA4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_1000A9B38()
{
  result = qword_1001774C0;
  if (!qword_1001774C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774C0);
  }

  return result;
}

uint64_t sub_1000A9B8C()
{
  v1 = v0[10];

  v2 = v0[12];
  if (v2 >> 60 != 15)
  {
    sub_10007676C(v0[11], v2);
  }

  v3 = v0[13];

  v4 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000A9C40()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000A9C98()
{
  result = qword_1001774C8;
  if (!qword_1001774C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774C8);
  }

  return result;
}

uint64_t sub_1000A9CEC()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 68, 7);
}

uint64_t sub_1000A9DCC()
{
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000A9E70()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000A9F14()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000AA050()
{
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000AA344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100022F64(a1, &v17);
  v6 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    v7 = v17;
    sub_10000CE78(v18);
    if (*(a2 + 16))
    {
      v8 = sub_10001D11C(v7, v6);
      if (v9)
      {
        sub_10001EAFC(*(a2 + 56) + 40 * v8, &v17);
        v10 = &v17;
LABEL_7:
        sub_10000D0A0(v10, v16);
        *&v17 = v7;
        *(&v17 + 1) = v6;
        result = sub_10000D0A0(v16, v18);
        v12 = v18[0];
        *a3 = v17;
        *(a3 + 16) = v12;
        *(a3 + 32) = v18[1];
        *(a3 + 48) = v19;
        return result;
      }
    }

    sub_100022F64(a1, &v17);

    sub_100001AB4(&qword_1001774D0, &qword_100123FB0);
    if (swift_dynamicCast())
    {
      v10 = v14;
      goto LABEL_7;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1000AA608(v14);
    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v17 = 0xD000000000000029;
    *(&v17 + 1) = 0x800000010012C0D0;
    v13._countAndFlagsBits = v7;
    v13._object = v6;
    String.append(_:)(v13);
  }

  else
  {
    sub_10000CE78(v18);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000AA550()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1000AA580@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1000AA590(uint64_t a1)
{
  v2 = sub_1000AA7B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AA5CC(uint64_t a1)
{
  v2 = sub_1000AA7B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AA608(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_1001774D8, &qword_100123FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AA670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AA6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000AA708()
{
  result = qword_1001774E0;
  if (!qword_1001774E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774E0);
  }

  return result;
}

unint64_t sub_1000AA760()
{
  result = qword_1001774E8;
  if (!qword_1001774E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774E8);
  }

  return result;
}

unint64_t sub_1000AA7B4()
{
  result = qword_1001774F0;
  if (!qword_1001774F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774F0);
  }

  return result;
}

BOOL sub_1000AA808(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t ActiveStreamingInterface.function.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t ActiveStreamingInterface.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

void ActiveControlInterface.usbDevice.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ActiveControlInterface.usbDevice.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000AAA40;
}

void sub_1000AAA40(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ActiveControlInterface.hasLatencyControl.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v2)
    {
      v3 = *(v2 + 16);
      v4 = (v2 + 32);
      while (v3)
      {
        v5 = *v4++;
        --v3;
        if (v5 == 22)
        {

          return 0;
        }
      }
    }
  }

  return *(v0 + 49);
}

uint64_t ActiveControlInterface.interfaceName.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t sub_1000AAB8C(uint64_t a1, char *a2, int a3, uint64_t a4, const char *a5, unint64_t a6)
{
  v73 = a5;
  v7 = v6;
  v74 = a6;
  LODWORD(v78) = a3;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v76 = *(v11 - 1);
  v77 = v11;
  v12 = *(v76 + 64);
  __chkstk_darwin(v11);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  v18 = *(a1 + 80);
  *(v6 + 96) = *(a1 + 64);
  *(v6 + 112) = v18;
  *(v6 + 128) = *(a1 + 96);
  *(v6 + 144) = *(a1 + 112);
  v19 = *(a1 + 16);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v19;
  v20 = *(a1 + 48);
  *(v6 + 64) = *(a1 + 32);
  *(v6 + 80) = v20;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v22 = v73;
  v21 = v74;
  *(v6 + 168) = a4;
  *(v6 + 176) = v22;
  *(v6 + 184) = v21;
  v23 = sub_1000ABA40();
  v73 = "usbHostInterface";
  v74 = v23;
  sub_100057294(a1, &v80);
  static DispatchQoS.userInteractive.getter();
  *&v80 = _swiftEmptyArrayStorage;
  sub_1000ABA8C(&qword_100177010, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001AB4(&unk_1001772C0, &unk_100122650);
  sub_1000ABAD4();
  v24 = a2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v76 + 104))(v75, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v77);
  v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 192) = v25;
  v26 = OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList;
  v27 = *&v24[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v27)
  {
    v28 = *(v27 + 16);
    v29 = (v27 + 32);
    while (v28)
    {
      v30 = *v29++;
      --v28;
      if (v30 == 15)
      {
        v31 = 4;
        goto LABEL_7;
      }
    }
  }

  v31 = *(a1 + 16);
LABEL_7:
  *(v6 + 208) = v31;
  if ((v78 & 1) == 0)
  {
    *(v6 + 200) = 0;
    goto LABEL_14;
  }

  v32 = *&v24[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = v25;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (!v34)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v46 = *(*a1 + 2);
      v47 = v33;
      v48 = v72;
      v49 = sub_1000F8CF8(v46, v33, sub_1000ABB38, 0);
      if (!v48)
      {
        v69 = v49;

        *(v7 + 200) = v69;
LABEL_14:
        v41 = *(v7 + 128);
        if (v41 == 1)
        {
          sub_1000572F0(a1);

          *(v7 + 160) = 0;
        }

        else
        {
          v42 = *(v7 + 88);
          v88[0] = *(v7 + 72);
          v88[1] = v42;
          v88[2] = *(v7 + 104);
          v43 = *(v7 + 120);
          v91 = *(v7 + 136);
          v89 = v43;
          v90 = v41;
          v44 = *(*a1 + 7);
          v45 = *(v7 + 88);
          v80 = *(v7 + 72);
          v81 = v45;
          v82 = *(v7 + 104);
          *&v83 = *(v7 + 120);
          *(&v83 + 1) = v41;
          v84 = *(v7 + 136);
          sub_100022594(&v80, v79);
          sub_1000572F0(a1);
          type metadata accessor for ActiveEndpoint();
          swift_allocObject();
          v79[0] = 1;
          *(v7 + 160) = sub_100116CD8(v88, v24, v44, 0x100000000);
        }

        return v7;
      }

      sub_1000572F0(a1);

      goto LABEL_21;
    }

LABEL_20:
    sub_1000572F0(a1);
    sub_10000CA2C();
    swift_allocError();
    *v50 = 1;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_21:
    v51 = 0;
    goto LABEL_22;
  }

  v35 = v34;
  v36 = v32;
  v37 = [v35 interfaceDescriptor];
  v38 = *(*a1 + 2);
  if (v37[2] == v38)
  {
    *(v7 + 200) = v35;
    v39 = v36;
    v40 = *&v24[v26];
    if (!v40)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v77 = v36;
  v59 = v24;
  v60 = *(v7 + 192);
  v61 = v60;
  v78 = v59;
  v62 = v72;
  v63 = sub_1000F8CF8(v38, v60, sub_1000ABB38, 0);
  if (!v62)
  {
    v64 = v63;

    *(v7 + 200) = v64;
    v36 = v77;
    v24 = v78;
    v40 = *&v78[v26];
    if (!v40)
    {
LABEL_34:

      goto LABEL_14;
    }

LABEL_29:
    v65 = *(v40 + 16);
    v66 = (v40 + 32);
    while (v65)
    {
      v67 = *v66++;
      --v65;
      if (v67 == 17)
      {
        *&v80 = 0;
        if ([v35 setIdleTimeout:&v80 error:2000.0])
        {
          v68 = v80;
          goto LABEL_34;
        }

        v70 = v80;
        sub_1000572F0(a1);
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v51 = 1;
        v24 = v36;
        goto LABEL_22;
      }
    }

    goto LABEL_34;
  }

  sub_1000572F0(a1);

  v51 = 0;
  v24 = v78;
LABEL_22:

  v52 = *(v7 + 16);
  swift_unknownObjectRelease();
  v53 = *(v7 + 112);
  v84 = *(v7 + 96);
  v85 = v53;
  v86 = *(v7 + 128);
  v87 = *(v7 + 144);
  v54 = *(v7 + 48);
  v80 = *(v7 + 32);
  v81 = v54;
  v55 = *(v7 + 80);
  v82 = *(v7 + 64);
  v83 = v55;
  sub_1000572F0(&v80);
  swift_unknownObjectWeakDestroy();
  v56 = *(v7 + 168);

  v57 = *(v7 + 184);

  if (v51)
  {
  }

  type metadata accessor for ActiveControlInterface();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_1000AB280(uint64_t a1, int a2)
{
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == -536870896)
  {
    if (qword_100173CB8 != -1)
    {
      v10 = result;
      swift_once();
      result = v10;
    }

    v8 = sub_10000A1BC(result, qword_1001794F0);
    sub_10000A2A4(v8, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v9, qword_100179508);
    sub_100039AA0(1, v7, 0xD000000000000018, 0x800000010012F080);
    return sub_10000C9D0(v7);
  }

  return result;
}

uint64_t ActiveControlInterface.entity(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 168);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_10001EAFC(v8, &v11);
      v9 = v12;
      v10 = v13;
      sub_10001EAB8(&v11, v12);
      if ((*(v10 + 48))(v9, v10) == v6)
      {
        return sub_10001EFE4(&v11, a2);
      }

      ++v7;
      result = sub_10000CE78(&v11);
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveControlInterface.processInterrupt(attribute:wValue:)(AUASDCore::AUAInterruptAttribute_optional attribute, Swift::UInt16 wValue)
{
  v3 = v2;
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    active = ActiveFunction.deviceName.getter(ObjectType, v10);
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0xE700000000000000;
    active = 0x6E776F6E6B6E55;
  }

  if (attribute.value == AUASDCore_AUAInterruptAttribute_MEM)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v33 = active;
    v34 = v14;
    v15._object = 0x800000010012EFA0;
    v15._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v15);
    v16 = v33;
    v17 = v34;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v18 = sub_10000A1BC(v6, qword_1001794F0);
    sub_10000A2A4(v18, v9);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v19, qword_100179508);
    sub_100039AA0(2, v9, v16, v17);

    sub_10000C9D0(v9);
    if (*(v3 + 16))
    {
      v20 = *(v3 + 24);
      v21 = *(v3 + 16);
      v22 = swift_getObjectType();
      v23 = *(v20 + 112);
      swift_unknownObjectRetain();
      v24 = v23(v22, v20);
      swift_unknownObjectRelease();
      if (v24)
      {
        B2PInterface.processInterrupt(wValue:)(wValue);

        return;
      }
    }
  }

  else
  {
    if (attribute.value == AUASDCore_AUAInterruptAttribute_unknownDefault)
    {

      return;
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v25._countAndFlagsBits = active;
    v25._object = v14;
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0xD000000000000030;
    v26._object = 0x800000010012EF60;
    String.append(_:)(v26);
    value = attribute.value;
    _print_unlocked<A, B>(_:_:)();
    v27 = v33;
    v28 = v34;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v29 = sub_10000A1BC(v6, qword_1001794F0);
    sub_10000A2A4(v29, v9);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v30, qword_100179508);
    sub_100039F58(2, v9, v27, v28);

    sub_10000C9D0(v9);
  }

  sub_10000CA2C();
  swift_allocError();
  *v31 = 2;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0xE000000000000000;
  swift_willThrow();
}

uint64_t ActiveControlInterface.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 112);
  v9[4] = *(v0 + 96);
  v9[5] = v2;
  v9[6] = *(v0 + 128);
  v10 = *(v0 + 144);
  v3 = *(v0 + 48);
  v9[0] = *(v0 + 32);
  v9[1] = v3;
  v4 = *(v0 + 80);
  v9[2] = *(v0 + 64);
  v9[3] = v4;
  sub_1000572F0(v9);
  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 184);

  return v0;
}

uint64_t ActiveControlInterface.__deallocating_deinit()
{
  ActiveControlInterface.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1000AB9B8()
{
  result = qword_100177500;
  if (!qword_100177500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177500);
  }

  return result;
}

unint64_t sub_1000ABA40()
{
  result = qword_1001772B0;
  if (!qword_1001772B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001772B0);
  }

  return result;
}

uint64_t sub_1000ABA8C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000ABAD4()
{
  result = qword_100177018;
  if (!qword_100177018)
  {
    sub_10001E8F0(&unk_1001772C0, &unk_100122650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177018);
  }

  return result;
}

uint64_t sub_1000ABB3C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_1000ABC00(uint64_t (*a1)(void), uint64_t a2)
{
  v6 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = 13762560;
  if (Strong)
  {
    v2 = Strong;
    v9 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v9) = (*(v9 + 40))(ObjectType, v9);
    swift_unknownObjectRelease();
    if (v9 == 32)
    {
      v8 = 13764352;
    }

    else
    {
      v8 = 13762560;
    }
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000D040(v51, &qword_100175790, &unk_100121070);
    sub_10000CA2C();
    swift_allocError();
    *v41 = 1;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  v2 = v11;
  v12 = *(v6 + 24);
  v13 = swift_getObjectType();
  v50[3] = a1(0);
  v50[4] = a2;
  v50[0] = v6;

  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(v8, v50, 0, v13, v12, v51);
  swift_unknownObjectRelease();
  sub_10000CE78(v50);
  if (v3)
  {
    return v2;
  }

  sub_10000D0A0(v51, v53);
  v15 = v54;
  v14 = v55;
  v16 = sub_10001EAB8(v53, v54);
  v17 = v46;
  v18 = *(v15 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v56 = v20;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v46 - v21;
  (*(v18 + 16))(v46 - v21);
  v23 = *(v14 + 8);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    goto LABEL_9;
  }

  v24 = *(*(v23 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = v46;
  v47 = v46;
  v26 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(AssociatedTypeWitness);
  v48 = v18;
  swift_getAssociatedConformanceWitness();
  v27 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v46[1] = v46;
  __chkstk_darwin(v27);
  v18 = v48;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v28 = *(*(v23 + 32) + 8);
  v29 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v17 = v49;
  result = (*(v18 + 8))(v46 - v21, v15);
  if (v29)
  {
LABEL_9:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 32)
    {
      LODWORD(v51[0]) = -1;
      v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v31)
      {
        if (v32 <= 32)
        {
          v33 = *(*(v23 + 24) + 16);
          v34 = swift_getAssociatedTypeWitness();
          v49 = v17;
          v47 = v46;
          v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v34);
          v48 = v18;
          swift_getAssociatedConformanceWitness();
          v36 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          __chkstk_darwin(v36);
          v38 = v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
          v18 = v48;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v39 = *(*(v23 + 32) + 8);
          v40 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v18 + 8))(v38, v15);
          if ((v40 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      else if (v32 <= 32)
      {
LABEL_19:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_20;
      }

      __chkstk_darwin(v32);
      v43 = v46 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_10001E938();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v44 = *(*(v23 + 32) + 8);
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v18 + 8))(v43, v15);
      if (v45)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_20:
    v2 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v18 + 8))(v22, v15);
    sub_10000CE78(v53);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t static AsyncFeedbackType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::String __swiftcall AsyncFeedbackType.string()()
{
  v2 = v0;
  v3 = 0xD000000000000011;
  if (!v1)
  {
    v5 = "Explicit Feedback";
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v5 = "Implicit Feedback";
LABEL_7:
    v4 = ((v5 - 32) | 0x8000000000000000);
    goto LABEL_9;
  }

  if (v1 == 2)
  {
    v4 = 0x800000010012F100;
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = v1;
    _StringGuts.grow(_:)(24);

    v7._countAndFlagsBits = v2;
    v7._object = v6;
    String.append(_:)(v7);
    v3 = 0xD000000000000016;
    v4 = 0x800000010012F0A0;
  }

LABEL_9:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void AsyncFeedbackType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      Hasher._combine(_:)(v3);
      return;
  }

  Hasher._combine(_:)(0);

  String.hash(into:)();
}

Swift::Int AsyncFeedbackType.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (a2 != 2)
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000AC4A8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000AC538()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 1;
      goto LABEL_7;
    case 1:
      v2 = 2;
      goto LABEL_7;
    case 2:
      v2 = 3;
LABEL_7:
      Hasher._combine(_:)(v2);
      return;
  }

  v3 = *v0;
  Hasher._combine(_:)(0);

  String.hash(into:)();
}

Swift::Int sub_1000AC5D0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000AC65C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return v4 == 0;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000AC700()
{
  if (qword_100173CD8 != -1)
  {
    swift_once();
  }

  sub_10007DC6C(v0);
  if (qword_100173CE0 != -1)
  {
    swift_once();
  }

  result = sub_10007DC6C(v1);
  qword_100179540 = &off_100159ED0;
  return result;
}

uint64_t AUAStream.functionProtocol.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___AUAAudioDevice_function);
    v3 = v2 == 0;
    if (v2)
    {
      v4 = *(Strong + OBJC_IVAR___AUAAudioDevice_function + 8);
      v5 = *(Strong + OBJC_IVAR___AUAAudioDevice_function);
      ObjectType = swift_getObjectType();
      LOBYTE(v2) = (*(v4 + 40))(ObjectType, v4);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
    v3 = 1;
  }

  return v2 | (v3 << 8);
}

uint64_t AUAStream.started.getter()
{
  v1 = OBJC_IVAR___AUAStream_started;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AUAStream.started.setter(char a1)
{
  v3 = OBJC_IVAR___AUAStream_started;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AUAStream.function.getter()
{
  v1 = *(v0 + OBJC_IVAR___AUAStream_interface);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000AC9C4()
{
  v1 = *(*(v0 + OBJC_IVAR___AUAStream_interface) + 72);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 3;
  }

  if (v1 < 0)
  {
    v6 = *(*(v0 + OBJC_IVAR___AUAStream_interface) + 72);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 3;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

LABEL_6:
    v4 = *(v3 + 104);

    v5 = *(v4 + 128);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t AUAStream.controlScope.getter()
{
  v1 = OBJC_IVAR___AUAStream_controlScope;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AUAStream.controlScope.setter(int a1)
{
  v3 = OBJC_IVAR___AUAStream_controlScope;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1000ACB88()
{
  v1 = [v0 physicalFormat];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  type metadata accessor for AUAStreamFormat();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = *(v3 + OBJC_IVAR___AUAStreamFormat_altSetting);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 104);
  v6 = *(v5 + 56);
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = *(v5 + 48);
  v8 = *(v5 + 32);
  v23[0] = *(v5 + 16);
  v23[1] = v8;
  v9 = *(v5 + 64);
  v23[2] = *(v5 + 48);
  v23[3] = v9;
  v23[4] = *(v5 + 80);
  v10 = *&v23[0];
  sub_100022594(v23, &v22);
  v11 = IOUSBGetEndpointSynchronizationType(v10);
  if (IOUSBGetEndpointDirection(v10) != 1 || v11)
  {
    sub_1000225F0(v23);
    if (v11 == 1)
    {
      goto LABEL_24;
    }
  }

  else if (IOUSBGetEndpointUsageType(v10))
  {
    sub_1000225F0(v23);
  }

  else
  {
    wMaxPacketSize = v10->wMaxPacketSize;
    sub_1000225F0(v23);
    if (wMaxPacketSize >= 9 || wMaxPacketSize <= 2)
    {
      goto LABEL_24;
    }
  }

  if ((v7 & 1) == 0)
  {
LABEL_21:

    return;
  }

  v12 = [v0 physicalFormat];
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = v12;
  [v12 sampleRate];
  v15 = v14;

  if (v15 == 0.0)
  {
LABEL_24:

    return;
  }

  if (!is_mul_ok(v6, 0x3E8uLL))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = [v0 physicalFormat];
  if (!v16)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 sampleRate];
  v19 = v18;
  v20 = v18;

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v19 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v19)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (1000 * v6 / v19 == -1)
  {
    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_1000ACDAC()
{
  v1 = *(v0 + OBJC_IVAR___AUAStream_interface);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v3 = OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor;
  v4 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor];
  if (qword_100173CE8 != -1)
  {
    v15 = Strong;
    swift_once();
    Strong = v15;
  }

  v5 = *(qword_100179540 + 16);
  if (!v5)
  {

LABEL_18:
    v13 = 0;
    v12 = 0;
    return v12 | v13;
  }

  v6 = 0;
  v7 = 0;
  v8 = *&Strong[v3];
  v9 = (qword_100179540 + 80);
  do
  {
    if (*(v9 - 6) == *(v8 + 8) && *(v9 - 5) == *(v8 + 10))
    {
      v10 = *(v9 - 2);
      if ((v10 & 0x8000000000000000) == 0 && v10 == *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_curConfigNum])
      {
        v11 = *(v4 + 12);
        if (*(v9 - 4) <= v11 && *(v9 - 3) >= v11)
        {
          v6 |= *(v9 - 1) == *(*(v1 + 32) + 2);
          if (*(v9 - 1) == *(*(v1 + 32) + 2))
          {
            v7 = *v9;
          }

          else
          {
            v7 = v7;
          }
        }
      }
    }

    v9 += 14;
    --v5;
  }

  while (v5);

  v12 = v7 << 32;
  v13 = v6 & 1;
  return v12 | v13;
}

uint64_t sub_1000ADCB0()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v0[OBJC_IVAR___AUAStream_transferManager];
  if (result)
  {
    v8 = *(*result + 104);
    v9 = *result + 104;
    v10 = OBJC_IVAR___AUAStream_logID;
    v94 = OBJC_IVAR___AUAStream_audioDevice;

    v98 = v8;
    v97 = v9;
    (v8)(&v113);
    v11 = v116;
    if (v116)
    {
      v102 = &v0[v10];
      v12 = v115;
      v13 = v114;
      v96 = "AUAStream_enqueueNextTransfer";
      v101 = ", numUSBTransfers ";
      v92 = (v3 + 16);
      v91 = (v3 + 8);
      v87 = &v109;
      v86 = 0x8000000100130070;
      v85 = "changePhysicalFormat(_:)";
      v95 = 0xD000000000000012;
      *(&v14 + 1) = 2;
      v88 = xmmword_10011DE90;
      *&v14 = 136446210;
      v90 = v14;
      v93 = v0;
      v89 = v6;
      while (1)
      {
        v99 = v117;
        v16 = v113;
        aBlock = 0;
        v108 = 0xE000000000000000;
        _StringGuts.grow(_:)(59);
        v17._countAndFlagsBits = 0x726566736E617274;
        v17._object = 0xEB00000000204449;
        String.append(_:)(v17);
        LODWORD(v106) = v16;
        v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v18);

        v19._object = (v96 | 0x8000000000000000);
        v19._countAndFlagsBits = v95;
        String.append(_:)(v19);
        LODWORD(v106) = v12;
        v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v20);

        v21._object = (v101 | 0x8000000000000000);
        v21._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v21);
        v103 = v13;
        v106 = v13;
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v24 = aBlock;
        v23 = v108;
        if (qword_100173CB0 != -1)
        {
          swift_once();
        }

        if (byte_1001794E8 == 1)
        {
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v25, qword_100179508);
          aBlock = StaticString.description.getter();
          v108 = v26;
          v27._countAndFlagsBits = 32;
          v27._object = 0xE100000000000000;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v24;
          v28._object = v23;
          String.append(_:)(v28);

          sub_100039AA0(4, v102, aBlock, v108);
        }

        else
        {
          v104 = v12;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v29, qword_100179508);
          v30 = *(v29 + 24);
          v31 = type metadata accessor for LogID(0);
          (*v92)(v6, &v102[*(v31 + 20)], v2);

          v32 = OSSignposter.logHandle.getter();
          v33 = static os_signpost_type_t.event.getter();

          if (OS_os_log.signpostsEnabled.getter())
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            aBlock = v35;
            *v34 = v90;
            v36 = sub_100035760(v24, v23, &aBlock);

            *(v34 + 4) = v36;
            v37 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v37, "AUAStream_enqueueNextTransfer", "%{public}s", v34, 0xCu);
            sub_10000CE78(v35);
            v1 = v93;
          }

          else
          {
          }

          (*v91)(v6, v2);
          v12 = v104;
        }

        v38 = [v1 physicalFormat];
        if (!v38)
        {
          goto LABEL_27;
        }

        v39 = v38;
        type metadata accessor for AUAStreamFormat();
        v40 = swift_dynamicCastClass();
        if (!v40)
        {
          break;
        }

        v41 = *(v40 + OBJC_IVAR___AUAStreamFormat_altSetting);
        if (v41 && (v42 = *(*(v41 + 104) + 120)) != 0)
        {
          v104 = v12;
          v43 = swift_allocObject();
          *(v43 + 16) = v1;
          v44 = *(v42 + 16);

          sub_10000D0B8(&v113, &aBlock, &qword_100177B48, &qword_100124528);
          v45 = v1;
          if (![v44 increment])
          {

            sub_10000D040(&v113, &qword_100177B48, &qword_100124528);
            sub_10000D040(&v113, &qword_100177B48, &qword_100124528);

            goto LABEL_5;
          }

          v46 = *(v42 + 24);
          v47 = swift_allocObject();
          v47[2] = sub_1000BDAE8;
          v47[3] = v43;
          v47[4] = v42;
          v111 = sub_1000BDD3C;
          v112 = v47;
          aBlock = _NSConcreteStackBlock;
          v108 = 1107296256;
          v109 = sub_1000B9C68;
          v110 = &unk_100164AC0;
          v48 = _Block_copy(&aBlock);

          aBlock = 0;
          LOBYTE(v46) = [v46 enqueueIORequestWithData:v11 transactionList:v99 transactionListCount:v104 firstFrameNumber:v103 options:0 error:&aBlock completionHandler:v48];
          _Block_release(v48);
          if (v46)
          {
            v49 = aBlock;

            sub_10000D040(&v113, &qword_100177B48, &qword_100124528);
            sub_10000D040(&v113, &qword_100177B48, &qword_100124528);

LABEL_46:
            v6 = v89;
            goto LABEL_5;
          }

          v83 = aBlock;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          [*(v42 + 16) decrement];
          swift_willThrow();

          sub_10000D040(&v113, &qword_100177B48, &qword_100124528);

          v6 = v89;
        }

        else
        {
          sub_10000CA2C();
          swift_allocError();
          *v50 = 1;
          *(v50 + 8) = 0;
          *(v50 + 16) = 0xE000000000000000;
          swift_willThrow();
        }

LABEL_28:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          goto LABEL_4;
        }

        v53 = *(Strong + OBJC_IVAR___AUAAudioDevice_function);
        v54 = *(Strong + OBJC_IVAR___AUAAudioDevice_function + 8);
        v55 = Strong;
        swift_unknownObjectRetain();

        if (!v53)
        {
          goto LABEL_4;
        }

        ObjectType = swift_getObjectType();
        v57 = (*(v54 + 16))(ObjectType, v54);
        swift_unknownObjectRelease();
        if (v57)
        {
          v58 = *&v57[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
          v59 = v58;

          if (v58)
          {
            v60 = [v59 frameNumberWithTime:0];
            v61 = _convertErrorToNSError(_:)();
            v62 = [v61 code];

            if (v62 < 0xFFFFFFFF80000000)
            {
              __break(1u);
LABEL_50:
              __break(1u);
            }

            if (v62 > 0x7FFFFFFF)
            {
              goto LABEL_50;
            }

            v104 = v59;
            aBlock = 0;
            v108 = 0xE000000000000000;
            _StringGuts.grow(_:)(47);

            aBlock = 0x20726F727265;
            v108 = 0xE600000000000000;
            sub_100001AB4(&qword_100173C98, &unk_100120120);
            v63 = swift_allocObject();
            *(v63 + 16) = v88;
            *(v63 + 56) = &type metadata for Int32;
            *(v63 + 64) = &protocol witness table for Int32;
            *(v63 + 32) = v62;
            v64._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v64);

            v65._countAndFlagsBits = 0x617246727563202CLL;
            v65._object = 0xEB0000000020656DLL;
            String.append(_:)(v65);
            v106 = v60;
            v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v66);

            v67._object = (v101 | 0x8000000000000000);
            v67._countAndFlagsBits = 0xD000000000000018;
            String.append(_:)(v67);
            v106 = v103;
            v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v68);

            sub_100038CF0("AUAStream_enqueueNextTransfer_error", 35, 2, aBlock, v108, v102);

            if (v62 != -536870165)
            {
              v69 = swift_unknownObjectWeakLoadStrong();
              if (v69)
              {
                v70 = v69;
                aBlock = 0xD000000000000019;
                v108 = v86;
                v71._countAndFlagsBits = 8236;
                v71._object = 0xE200000000000000;
                String.append(_:)(v71);
                v72._countAndFlagsBits = 0xD000000000000016;
                v72._object = (v85 | 0x8000000000000000);
                String.append(_:)(v72);
                v73._countAndFlagsBits = 2108704;
                v73._object = 0xE300000000000000;
                String.append(_:)(v73);
                v106 = 528;
                v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v74);

                sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v108, &v70[OBJC_IVAR___AUAAudioDevice_logID]);

                v75 = *&v70[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
                v76 = swift_allocObject();
                v76[2] = AUAError.init(_:message:);
                v76[3] = 0;
                aBlock = sub_100038564;
                v108 = v76;
                v77 = *(v75 + 16);
                v78 = __chkstk_darwin(v76);
                __chkstk_darwin(v78);

                os_unfair_lock_lock(v77 + 4);
                sub_10003854C(&v106);
                os_unfair_lock_unlock(v77 + 4);
                LOBYTE(v75) = v106;

                if (v75)
                {
                  v79 = swift_allocObject();
                  *(v79 + 16) = v70;
                  v111 = sub_10001EFC8;
                  v112 = v79;
                  aBlock = _NSConcreteStackBlock;
                  v108 = 1107296256;
                  v109 = sub_1000172D4;
                  v110 = &unk_100164A48;
                  v80 = _Block_copy(&aBlock);
                  v81 = v70;

                  v82 = type metadata accessor for AUAAudioDevice();
                  v105.receiver = v81;
                  v105.super_class = v82;
                  objc_msgSendSuper2(&v105, "requestConfigurationChange:", v80);
                  _Block_release(v80);

                  sub_10000D040(&v113, &qword_100177B48, &qword_100124528);
                }

                else
                {

                  sub_10000D040(&v113, &qword_100177B48, &qword_100124528);
                }
              }

              else
              {

                v15 = sub_10000D040(&v113, &qword_100177B48, &qword_100124528);
              }

              v1 = v93;
              goto LABEL_46;
            }
          }

          else
          {
          }

          v15 = sub_10000D040(&v113, &qword_100177B48, &qword_100124528);
          v1 = v93;
        }

        else
        {
LABEL_4:

          v15 = sub_10000D040(&v113, &qword_100177B48, &qword_100124528);
        }

LABEL_5:
        v98(&v113, v15);
        v13 = v114;
        v12 = v115;
        v11 = v116;
        if (!v116)
        {
        }
      }

LABEL_27:
      sub_10000CA2C();
      swift_allocError();
      *v51 = 1;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_28;
    }
  }

  return result;
}

void sub_1000B0228(void *a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___AUAStream_transferManager;
  if (!*(a1 + OBJC_IVAR___AUAStream_transferManager))
  {
    v13 = OBJC_IVAR___AUAStream_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v14, qword_100179508);
    sub_100039F58(4, a1 + v13, 0xD00000000000001CLL, 0x8000000100130240);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v42 = v7;
    v17 = *(a1 + v12);
    if (!v17)
    {

      return;
    }

    v43 = v3;
    v18 = OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame;
    *(a1 + OBJC_IVAR___AUAStream_firstTimeStampUSBFrame) = *&Strong[OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame];

    v19 = [a1 direction];
    v20 = OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame;
    if (v19 != 1768845428)
    {
      v20 = v18;
    }

    (*(*v17 + 88))(*&v16[v20]);
    v21 = OBJC_IVAR___AUAStream_started;
    swift_beginAccess();
    *(a1 + v21) = 1;
    *(a1 + OBJC_IVAR___AUAStream_needFirstTimeStamp) = 1;
    *(a1 + OBJC_IVAR___AUAStream_lastIOTimeNS) = 0;
    *(a1 + OBJC_IVAR___AUAStream_timeStampSeed) = *&v16[OBJC_IVAR___AUAAudioDevice_curZTSSeed];
    *(a1 + OBJC_IVAR___AUAStream_sampleTime) = 0;
    *(a1 + OBJC_IVAR___AUAStream_hostTime) = 0;
    ObjectType = swift_getObjectType();
    v23 = *(a3 + 112);
    v24 = v23(ObjectType, a3);
    v41 = v6;
    if (v24 && ((, ![v16 isHidden]) ? (v25 = OBJC_IVAR___AUAStream_b2pStandaloneStart) : (v25 = OBJC_IVAR___AUAStream_b2pUnifedStart), v26 = a1 + v25, (*v26 & 1) == 0))
    {
      v27 = 1;
      *v26 = 1;
    }

    else
    {
      v27 = 0;
    }

    (*((swift_isaMask & *a1) + 0x2D0))();
    v28 = type metadata accessor for AUAStream(0);
    v50.receiver = a1;
    v50.super_class = v28;
    objc_msgSendSuper2(&v50, "startStream");
    if (v27)
    {
      v29 = v23(ObjectType, a3);
      if (v29)
      {
        v30 = v29;
        v31 = (*(a3 + 16))(ObjectType, a3);
        if (v31)
        {
          v32 = v31;
          v48 = *(v30 + 64);
          v33 = swift_allocObject();
          *(v33 + 16) = v32;
          *(v33 + 24) = v16;
          aBlock[4] = sub_1000BDC04;
          aBlock[5] = v33;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000172D4;
          aBlock[3] = &unk_100164B10;
          v34 = _Block_copy(aBlock);
          v40 = v32;
          v35 = v16;
          v36 = v44;
          static DispatchQoS.unspecified.getter();
          v51 = _swiftEmptyArrayStorage;
          sub_1000BDC0C();
          sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
          sub_1000BDC64();
          v37 = v46;
          v38 = v41;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v34);

          (*(v42 + 8))(v37, v38);
          (*(v45 + 8))(v36, v47);

LABEL_23:

          return;
        }
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_1000B07C0(uint64_t a1, void *a2)
{
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10011DE90;
  *(inited + 32) = 0x64656966696E75;
  *(inited + 40) = 0xE700000000000000;
  sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)([a2 isHidden]);
  v4 = sub_10000AB64(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
  sub_1000FC32C(0xD00000000000002ALL, 0x8000000100130260, v4);
}

uint64_t sub_1000B0DF8(_BYTE *a1)
{
  v3 = OBJC_IVAR___AUAStream_started;
  swift_beginAccess();
  a1[v3] = 0;
  v31.receiver = a1;
  v31.super_class = type metadata accessor for AUAStream(0);
  objc_msgSendSuper2(&v31, "stopStream");
  v4 = OBJC_IVAR___AUAStream_transferManager;
  v5 = *&a1[OBJC_IVAR___AUAStream_transferManager];
  if (v5 && a1[OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream] == 1)
  {
    v6 = *(*v5 + 128);
    v7 = *&a1[OBJC_IVAR___AUAStream_transferManager];

    v6(v8);
  }

  v9 = OBJC_IVAR___AUAStream_streamingEndpoint;
  v10 = *&a1[OBJC_IVAR___AUAStream_streamingEndpoint];
  if (v10 && *(v10 + 120))
  {
    v11 = a1[OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream];
    v12 = *&a1[OBJC_IVAR___AUAStream_streamingEndpoint];

    sub_100116498(v11);

    v13 = *(v12 + 120);
    *(v12 + 120) = 0;

    v14 = *&a1[v9];
  }

  *&a1[v9] = 0;

  v15 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 112);
  if (!v15)
  {
    sub_10000CA2C();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_12;
  }

  v29 = 0;
  v16 = v15;
  if (([v16 selectAlternateSetting:0 error:&v29] & 1) == 0)
  {
    v19 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_12:
    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 code];

    if (v21 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v21 <= 0x7FFFFFFF)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v22._object = 0x80000001001301F0;
      v22._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v22);
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10011DE90;
      *(v23 + 56) = &type metadata for Int32;
      *(v23 + 64) = &protocol witness table for Int32;
      *(v23 + 32) = v21;
      v24._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0xD000000000000025;
      v25._object = 0x8000000100130210;
      String.append(_:)(v25);
      v20 = v29;
      v21 = v30;
      v1 = OBJC_IVAR___AUAStream_logID;
      if (qword_100173CC0 == -1)
      {
LABEL_15:
        v26 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v26, qword_100179508);
        sub_100039F58(4, &a1[v1], v20, v21);

        goto LABEL_16;
      }

LABEL_19:
      swift_once();
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_19;
  }

  v17 = v29;

LABEL_16:
  v27 = *&a1[v4];
  *&a1[v4] = 0;
}

Swift::Bool __swiftcall AUAStream.deviceChanged(toSamplingRate:)(Swift::Double toSamplingRate)
{
  v2 = v1;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v4._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0x800000010012F180;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._object = 0x800000010012F1C0;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);
  v15 = [v1 physicalFormat];
  sub_100001AB4(&qword_100177660, &unk_1001241F0);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v8, qword_100179508);
  sub_100039AA0(3, v1 + v7, 0, 0xE000000000000000);

  v9 = [v1 physicalFormats];
  if (v9)
  {
    v10 = v9;
    sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v14.receiver = v2;
      v14.super_class = type metadata accessor for AUAStream(0);
      LOBYTE(v9) = objc_msgSendSuper2(&v14, "deviceChangedToSamplingRate:", toSamplingRate);
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return v9;
}

uint64_t AUAStream.changePhysicalFormat(_:)(void *a1)
{
  v2 = v1;
  v4 = ", physicalFormat ";
  v5 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  v33 = sub_10000A1BC(v6, qword_100179508);
  v34 = v5;
  sub_100039AA0(3, v2 + v5, 0xD00000000000001ELL, (v4 | 0x8000000000000000));
  result = [v2 physicalFormats];
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_26:

LABEL_27:
    sub_10000CA2C();
    v30 = swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_errorRetain();
    _StringGuts.grow(_:)(22);
    v32._object = 0x800000010012F200;
    v32._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v32);
    v42 = v30;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    sub_100039F58(3, v2 + v34, 0, 0xE000000000000000);

    return 0;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      result = *(v4 + 8 * v10 + 32);
    }

    v11 = result;
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (!a1)
    {
      __break(1u);
      goto LABEL_29;
    }

    if ([a1 isCompatible:result])
    {
      break;
    }

    ++v10;
    if (v5 == v9)
    {
      goto LABEL_26;
    }
  }

  [v11 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for AUAStreamFormat();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = v42;
    [a1 sampleRate];
    [v14 setSampleRate:?];

    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v2;
    v15[4] = v13;
    aBlock = 0xD000000000000018;
    v37 = 0x800000010012F220;
    v16 = v14;
    v17 = v2;
    v18 = v13;
    v19._countAndFlagsBits = 8236;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0xD000000000000016;
    v20._object = 0x800000010012F240;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 2108704;
    v21._object = 0xE300000000000000;
    String.append(_:)(v21);
    v42 = 723;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, 0xD000000000000018, 0x800000010012F220, &v18[OBJC_IVAR___AUAAudioDevice_logID]);

    v23 = *&v18[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1000B9D30;
    *(v24 + 24) = v15;
    aBlock = sub_10000CF5C;
    v37 = v24;
    v25 = *(v23 + 16);
    v26 = __chkstk_darwin(v24);
    __chkstk_darwin(v26);

    os_unfair_lock_lock(v25 + 4);
    sub_10000CF80(&v42);
    os_unfair_lock_unlock(v25 + 4);
    LODWORD(v23) = v42;

    if (v23 == 1)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v18;
      v40 = sub_10000CFD4;
      v41 = v27;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_1000172D4;
      v39 = &unk_1001644C8;
      v28 = _Block_copy(&aBlock);
      v29 = v18;

      v35.receiver = v29;
      v35.super_class = type metadata accessor for AUAAudioDevice();
      objc_msgSendSuper2(&v35, "requestConfigurationChange:", v28);
      _Block_release(v28);
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000B1A78(void *a1, void *a2, void *a3)
{
  _StringGuts.grow(_:)(65);
  v6._countAndFlagsBits = 0x6152656C706D6173;
  v6._object = 0xEB00000000206574;
  String.append(_:)(v6);
  [a1 sampleRate];
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 0x656E6E616863202CLL;
  v7._object = 0xEB0000000020736CLL;
  String.append(_:)(v7);
  [a1 channelsPerFrame];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._object = 0x80000001001301D0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v20 = [a1 bitsPerChannel];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000012;
  v11._object = 0x800000010012BB10;
  String.append(_:)(v11);
  [a1 sampleRate];
  Double.write<A>(to:)();
  v12 = OBJC_IVAR___AUAStream_logID;
  v13 = qword_100173CC0;
  v14 = a3;
  v15 = a1;
  v16 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AUALog(0);
  v18 = sub_10000A1BC(v17, qword_100179508);
  sub_1000438F4(3, "AUAStream changePhysicalFormat", 30, 2, &v16[v12], HIDWORD(v20), 0xE000000000000000, v18, v14, v15, v16);
}

id sub_1000B1CE4(void *a1, id a2, void *a3)
{
  [a2 sampleRate];
  v7 = v6;
  v8._countAndFlagsBits = 0x3A6574615277656ELL;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  v9 = OBJC_IVAR___AUAAudioDevice_logID;
  v10 = qword_100173CC0;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for AUALog(0);
  v13 = sub_10000A1BC(v12, qword_100179508);
  sub_10003B08C(3, "setSamplingRate", 15, 2, &v11[v9], 0, 0xE000000000000000, v13, v7, v11);

  return [a3 setPhysicalFormat:a2];
}

void sub_1000B1E98()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v53 - v10;
  v12 = [v3 physicalFormat];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  type metadata accessor for AUAStreamFormat();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_12:
    sub_10000CA2C();
    swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v15 = *&v14[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v15)
  {
    sub_10000CA2C();
    swift_allocError();
    v34 = 83;
LABEL_15:
    *v33 = v34;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v16 = *(*&v3[OBJC_IVAR___AUAStream_interface] + 112);
  if (!v16)
  {
    sub_10000CA2C();
    swift_allocError();
    v34 = 1;
    goto LABEL_15;
  }

  v61 = v5;
  v62 = v2;
  v64 = v14;
  v65 = 0x74616E7265746C61;
  v66 = 0xEA00000000002065;
  v68 = *(*(v15 + 16) + 3);

  v17 = v16;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v15;
  String.append(_:)(v18);

  v58 = v65;
  v59 = v66;
  v20 = OBJC_IVAR___AUAStream_logID;
  v21 = qword_100173CB0;
  v63 = v19;

  v22 = v17;
  v23 = v13;
  v60 = v3;
  if (v21 != -1)
  {
    swift_once();
  }

  v24 = &v3[v20];
  if (byte_1001794E8 == 1)
  {
    v25 = v60;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    v27 = sub_10000A1BC(v26, qword_100179508);
    v28 = v63;

    v29 = v22;
    v30 = v23;
    v31 = v25;
    sub_10003C66C(4, "AUAStream_prepareStream", 23, 2, v24, v58, v59, v27, v29, v28, v64, v31);
  }

  else
  {
    v56 = v23;
    v57 = v22;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for AUALog(0);
    v36 = sub_10000A1BC(v35, qword_100179508);
    v37 = *(v35 + 24);
    v38 = v24 + *(type metadata accessor for LogID(0) + 20);
    v54 = *(v61 + 16);
    v54(v11, v38, v4);
    v39 = v59;

    v55 = v36;
    v40 = OSSignposter.logHandle.getter();
    v41 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v42 = swift_slowAlloc();
      v67 = v41;
      v43 = v42;
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136446210;
      v45 = sub_100035760(v58, v39, &v65);

      *(v43 + 4) = v45;
      v46 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v67, v46, "AUAStream_prepareStream", "%{public}s", v43, 0xCu);
      sub_10000CE78(v44);
    }

    else
    {
    }

    v47 = v63;
    v48 = v60;
    v54(v9, v11, v4);
    v49 = type metadata accessor for OSSignpostIntervalState();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v61 + 8))(v11, v4);
    v29 = v57;
    sub_1000B2494(v57, v47, v64, v48);
    sub_1000461FC(v55, "AUAStream_prepareStream", 23, 2);

    v52 = v56;
  }
}

void sub_1000B2494(void *a1, uint64_t a2, void *a3, char *a4)
{
  v8 = a1;
  v9 = *(*(a2 + 16) + 3);
  aBlock = 0;
  v10 = [a1 selectAlternateSetting:v9 error:&aBlock];
  v11 = aBlock;
  if (!v10)
  {
    v20 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v66 = v4;
  v68 = a4;
  swift_beginAccess();
  v67 = a2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v21 = v11;
    v18 = a2;
    v17 = a4;
    goto LABEL_13;
  }

  v13 = Strong;
  if (*(Strong + 128))
  {
    v14 = v11;

    v15 = &off_100167CF8;
    goto LABEL_5;
  }

  v65 = a3;
  v40 = *(Strong + 72);
  if (v40 >> 62)
  {
    goto LABEL_40;
  }

  v69 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v69)
  {
LABEL_41:
    v63 = v11;
LABEL_42:
    sub_10000CA2C();
    swift_allocError();
    v62 = 86;
    goto LABEL_43;
  }

LABEL_22:
  v64 = v8;
  v41 = v11;
  swift_beginAccess();
  v11 = 0;
  while (1)
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v11 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v42 = *(v40 + 8 * v11 + 32);

      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v69 = _CocoaArrayWrapper.endIndex.getter();
        if (!v69)
        {
          goto LABEL_41;
        }

        goto LABEL_22;
      }
    }

    if (*(v13 + 16))
    {
      break;
    }

    v78 = 0;
    v76 = 0u;
    v77 = 0u;
LABEL_24:
    sub_10000D040(&v76, &qword_100176188, &qword_100124520);
    v11 = v11 + 1;
    if (v8 == v69)
    {
      goto LABEL_42;
    }
  }

  v43 = *(v13 + 24);
  v44 = *(v13 + 16);
  ObjectType = swift_getObjectType();
  v46 = *(v43 + 208);
  swift_unknownObjectRetain();
  v46(&v76, v42, ObjectType, v43);
  swift_unknownObjectRelease();

  if (!*(&v77 + 1))
  {
    goto LABEL_24;
  }

  sub_10000D0A0(&v76, v79);
  sub_10000D0A0(v79, &aBlock);
  v47 = v73;
  v48 = v74;
  sub_10001EAB8(&aBlock, v73);
  if (!(*(v48 + 4))(v47, v48))
  {
    sub_10000CE78(&aBlock);
    sub_10000CA2C();
    swift_allocError();
    v62 = 87;
LABEL_43:
    *v61 = v62;
    *(v61 + 8) = 0;
    *(v61 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v50 = v49;

  v15 = *(v50 + 16);
  sub_10000CE78(&aBlock);
  v8 = v64;
  a3 = v65;
LABEL_5:
  v16 = swift_getObjectType();
  v18 = v67;
  v17 = v68;
  if ((v15[10])(v16, v15))
  {
    [a3 sampleRate];
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -1.0)
    {
      if (v19 < 1.84467441e19)
      {
        (v15[3])(v19, 0, v16, v15);
        goto LABEL_10;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_13:
  v22 = *&v17[OBJC_IVAR___AUAStream_streamingEndpoint];
  *&v17[OBJC_IVAR___AUAStream_streamingEndpoint] = *(v18 + 104);
  swift_retain_n();

  sub_100117448(v8, 0);

  if (v66)
  {
    return;
  }

  if ([v17 direction] != 1768845428)
  {
    v51 = type metadata accessor for AUAOutputTransferManager(0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = v17;
    sub_1000085BC(v54, a3, v8);
    v55 = *&v54[OBJC_IVAR___AUAStream_transferManager];
    *&v54[OBJC_IVAR___AUAStream_transferManager] = v56;

    sub_100009A38();
    v58 = v57;
    v60 = v59;

    v74 = v58;
    v75 = v60;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_1000B2B84;
    v73 = &unk_100164890;
    v39 = _Block_copy(&aBlock);

    [v54 setWriteMixBlock:{v39, v64}];
LABEL_36:
    _Block_release(v39);
    return;
  }

  v23 = type metadata accessor for AUAInputTransferManager(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v17;
  sub_100005C58(v26, a3, v8);
  v28 = v27;
  v29 = *&v26[OBJC_IVAR___AUAStream_transferManager];
  *&v26[OBJC_IVAR___AUAStream_transferManager] = v27;

  v30 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
  v31 = v28 + *(type metadata accessor for LogID(0) + 20) + v30;
  v32 = OSSignpostID.rawValue.getter();
  v33 = v28[12];
  if (HIDWORD(v33))
  {
    goto LABEL_48;
  }

  v34 = v28[8];
  if (HIDWORD(v34))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v35 = v28[13];
  if (HIDWORD(v35))
  {
    goto LABEL_50;
  }

  v36 = v28[3];
  if (v36)
  {
    v37 = AUARealtimeReadInputBlock(v32, v33, 32, v34, v35, v36, v28[7]);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;

    v74 = sub_1000BDAC4;
    v75 = v38;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_1000B2B84;
    v73 = &unk_1001648E0;
    v39 = _Block_copy(&aBlock);

    [v26 setReadInputBlock:{v39, v64}];
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t sub_1000B2B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v13 = v12(a2, a3, a4, a5, a6);

  return v13;
}

Swift::String_optional __swiftcall AUAStream.channelName(forChannelIndex:)(Swift::UInt32 forChannelIndex)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___AUAStream_path);
  ActiveOutputTerminal.cluster.getter();
  if (v5)
  {
    if (*(v5 + 16) > forChannelIndex && (v6 = v5 + 32 * forChannelIndex, (v7 = *(v6 + 48)) != 0))
    {
      v8 = *(v6 + 40);
      v9 = *(v6 + 48);
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v14 = String._bridgeToObjectiveC()();

      v15 = [v13 localizedStringForKey:v14 value:0 table:0];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v16;
    }
  }

  else
  {
    v17 = OBJC_IVAR___AUAStream_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v18, qword_100179508);
    sub_100039F58(1, v2 + v17, 0xD00000000000001ALL, 0x800000010012F260);
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v19 = v8;
  v20 = v7;
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

Swift::String_optional __swiftcall AUAStream.channelCategory(forChannelIndex:)(Swift::UInt32 forChannelIndex)
{
  v2 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v3, qword_100179508);
  sub_100039F58(1, v1 + v2, 0xD00000000000001ELL, 0x800000010012F280);
  v4 = 0;
  v5 = 0;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall AUAStream.channelNumber(forChannelIndex:)(Swift::UInt32 forChannelIndex)
{
  v2 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v3, qword_100179508);
  sub_100039F58(1, v1 + v2, 0xD00000000000001CLL, 0x800000010012F2A0);
  v4 = 0;
  v5 = 0;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t AUAStream.preferredChannelDescription(_:forChannelIndex:)(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v4 = result;
    *(result + 4) = 0;
    *(result + 12) = 0;
    v5 = *(v2 + OBJC_IVAR___AUAStream_path);
    result = ActiveOutputTerminal.cluster.getter();
    if (v6)
    {
      if (*(v6 + 16) <= a2)
      {
      }

      else
      {
        v7 = *(v6 + 32 * a2 + 56);

        if ((v7 - 1) < 0x47)
        {
          v8 = dword_100124534[v7 - 1];
LABEL_8:
          *v4 = v8;
          return result;
        }
      }
    }

    v8 = -1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id AUAStream.__allocating_init(direction:with:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithDirection:a1 withPlugin:a2];

  return v4;
}

char *sub_1000B33E4(void *a1, char *a2)
{
  *(v2 + 16) = a1;
  v3 = (v2 + 16);
  *(v2 + 24) = a2;
  v4 = *&a2[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v4)
  {
    sub_10000CA2C();
    swift_allocError();
    *v20 = 83;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_15;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v21 = a1;
    v22 = a2;

    goto LABEL_14;
  }

  v8 = *(Strong + 112);
  v9 = v8;
  v29 = a1;
  v30 = a2;

  if (!v8)
  {
LABEL_14:
    sub_10000CA2C();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_15;
  }

  v11 = *(v4 + 104);
  v12 = v11[14];
  if (HIDWORD(v12))
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = *(*v3 + OBJC_IVAR___AUAAudioDevice_lockDelayMS);
  v14 = v11[12];
  if (!is_mul_ok(v13, v14))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v11[13];
  if (!v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v13 * v14 / v15;
  *(v2 + 32) = v16;
  if (!is_mul_ok(v14, 0x14uLL))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = 20 * v14 / v15;
  v18 = v16 >= v17;
  v19 = v16 - v17;
  if (!v18)
  {
    goto LABEL_28;
  }

  *(v2 + 40) = v19;
  *(v2 + 48) = 2 * v14 / v15;

  result = sub_100005814(v9, v12);
  if (v31)
  {

LABEL_15:

    type metadata accessor for AUALockDelay();
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v2 + 56) = result;
  v24 = *(v2 + 32);
  if (v24 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v24 * 28) >> 64 != (28 * v24) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = sub_100005814(v9, 28 * v24);
  *(v2 + 64) = v25;
  v26 = v25;
  result = [v26 mutableBytes];
  *(v2 + 72) = result;
  v27 = *(v2 + 32);
  if ((v27 & 0x8000000000000000) == 0)
  {
    if (v27)
    {
      v28 = result + 16;
      do
      {
        *(v28 - 1) = 0;
        *v28 = 0;
        *(v28 - 4) = -536870911;
        *(v28 - 3) = v12;
        *(v28 + 2) = 0;
        v28 += 28;
        --v27;
      }

      while (v27);
    }

    return v2;
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_1000B3744()
{
  v1 = type metadata accessor for LogID(0);
  v2 = *(*(v1 - 1) + 8);
  __chkstk_darwin(v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[2];
  v6 = *(v5 + OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame);
  aBlock = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v7._object = 0x800000010012FCD0;
  String.append(_:)(v7);
  v73 = *(v5 + OBJC_IVAR___AUAAudioDevice_lockDelayMS);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000011;
  v9._object = 0x800000010012FCF0;
  String.append(_:)(v9);
  v67 = v0;
  v10 = v0[4];
  v73 = v10;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0x800000010012FD10;
  v12._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v12);
  v73 = v6;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = aBlock;
  v15 = v71;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v57 = sub_10000A1BC(v1, qword_1001794F0);
    sub_10000A2A4(v57, v4);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v56 = sub_10000A1BC(v16, qword_100179508);
    sub_100039AA0(4, v4, v14, v15);

    sub_10000C9D0(v4);
    v17 = *(v67[3] + OBJC_IVAR___AUAStreamFormat_altSetting);
    if (!v17)
    {
      v55 = v4;
      sub_10000CA2C();
      swift_allocError();
      v45 = 83;
LABEL_38:
      *v44 = v45;
      *(v44 + 8) = 0;
      *(v44 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_39;
    }

    result = *(v17 + 104);
    v15 = result[15];
    if (!v15)
    {
      v55 = v4;
      sub_10000CA2C();
      swift_allocError();
      v45 = 1;
      goto LABEL_38;
    }

    v19 = result[12];
    if (v19 >> 61)
    {
      goto LABEL_53;
    }

    v20 = result[13];
    if (!v20)
    {
      goto LABEL_54;
    }

    v21 = 8 * v19;
    if (v20 > v21)
    {
      goto LABEL_55;
    }

    v22 = v21 / v20;
    v23 = v10 / (v21 / v20);
    v24 = v10 % (v21 / v20);
    v25 = v22 + v24;
    if (__CFADD__(v22, v24))
    {
      goto LABEL_56;
    }

    if (v22 > v10)
    {
      return result;
    }

    v55 = v4;
    v10 = v23 - 1;
    v26 = v67[9];
    v62 = v67[7];
    v63 = v26;
    v61 = v72;
    v58 = result;

    v4 = 0;
    v14 = 0;
    v1 = &selRef_modelUID;
    v60 = v23 - 1;
    v59 = v25;
LABEL_12:
    if (v14 < v23)
    {
      break;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  if (v14)
  {
    v27 = v22;
  }

  else
  {
    v27 = v25;
  }

  if (v10 == v14)
  {

    v69 = sub_1000BDA88;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (![*(v15 + 16) v1[120]])
  {
    goto LABEL_23;
  }

  v28 = v23;
  v66 = v6;
  v29 = v22;
  v64 = *(v15 + 24);
  v65 = v63 + 28 * v4;
  v30 = swift_allocObject();
  v31 = v68;
  v32 = v69;
  v30[2] = v69;
  v30[3] = v31;
  v30[4] = v15;
  v72[2] = sub_1000BDD3C;
  v72[3] = v30;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72[0] = sub_1000B9C68;
  v72[1] = &unk_1001647F0;
  v33 = _Block_copy(&aBlock);
  v34 = v15;

  sub_10001DB5C(v32);

  aBlock = 0;
  v35 = v27;
  v36 = v66;
  v37 = [v64 enqueueIORequestWithData:v62 transactionList:v65 transactionListCount:v35 firstFrameNumber:v33 options:? error:? completionHandler:?];
  _Block_release(v33);
  if (v37)
  {
    v38 = aBlock;
    v15 = v34;
    v22 = v29;
    v6 = v36;
    v23 = v28;
    v25 = v59;
    v10 = v60;
    v1 = &selRef_modelUID;
LABEL_23:
    sub_10001ED94(v69);
    if (v14)
    {
      v39 = __CFADD__(v6, 8);
      v6 += 8;
      if (v39)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v40 = v58[12];
      if (!v40)
      {
        goto LABEL_49;
      }

      v41 = v25 / v40;
      v39 = __CFADD__(v6, v41);
      v6 += v41;
      if (v39)
      {
        goto LABEL_46;
      }
    }

    if (v4)
    {
      v42 = v22;
    }

    else
    {
      v42 = v25;
    }

    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v43 = __OFADD__(v4, v42);
    v4 += v42;
    if (v43)
    {
      goto LABEL_48;
    }

    v14 = (v14 + 1);
    if (v23 == v14)
    {
    }

    goto LABEL_12;
  }

  v53 = aBlock;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  [*(v34 + 16) decrement];
  swift_willThrow();

  sub_10001ED94(v69);
LABEL_39:
  v46 = _convertErrorToNSError(_:)();
  v47 = [v46 code];

  if (v47 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v47 > 0x7FFFFFFF)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  aBlock = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  aBlock = 0xD000000000000019;
  v71 = 0x800000010012FD30;
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10011DE90;
  *(v48 + 56) = &type metadata for Int32;
  *(v48 + 64) = &protocol witness table for Int32;
  *(v48 + 32) = v47;
  v49._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v49);

  v50 = aBlock;
  v51 = v71;
  v52 = v55;
  sub_10000A2A4(v57, v55);
  sub_100039F58(4, v52, v50, v51);

  return sub_10000C9D0(v52);
}

uint64_t sub_1000B3ED4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000B3F24()
{
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  strcpy(v52, "locklDelayMS: ");
  HIBYTE(v52[1]) = -18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *&Strong[OBJC_IVAR___AUAAudioDevice_lockDelayMS];
  }

  else
  {
    v11 = 0;
  }

  v53 = v11;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._object = 0x800000010012BC20;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR___AUAAudioDevice_feedbackDelayMS];
  }

  else
  {
    v15 = 0;
  }

  v53 = v15;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17 = v52[1];
  v51 = v52[0];
  v18 = OBJC_IVAR___AUAStream_logID;
  v19 = qword_100173CB0;
  v20 = v2;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = v2 + v18;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for AUALog(0);
    v23 = sub_10000A1BC(v22, qword_100179508);
    v24 = v20;
    sub_10003D374(4, "AUAInputStream_prepareStream", 28, 2, v21, v51, v17, v23, v24);
  }

  else
  {
    v47 = v20;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    v27 = sub_10000A1BC(v26, qword_100179508);
    v28 = *(v26 + 24);
    v29 = *(type metadata accessor for LogID(0) + 20);
    v48 = v4;
    v49 = v3;
    v30 = *(v4 + 16);
    v30(v9, v21 + v29, v3);

    v31 = OSSignposter.logHandle.getter();
    v32 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v33 = swift_slowAlloc();
      v45 = v27;
      v34 = v33;
      v35 = swift_slowAlloc();
      v46 = v1;
      v36 = v35;
      v52[0] = v35;
      *v34 = 136446210;
      v37 = sub_100035760(v51, v17, v52);

      *(v34 + 4) = v37;
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v38, "AUAInputStream_prepareStream", "%{public}s", v34, 0xCu);
      sub_10000CE78(v36);

      v27 = v45;
    }

    else
    {
    }

    v39 = v49;
    v30(v50, v9, v49);
    v40 = type metadata accessor for OSSignpostIntervalState();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v48 + 8))(v9, v39);
    v43 = v47;
    sub_1000B4430(v47);
    sub_1000461FC(v27, "AUAInputStream_prepareStream", 28, 2);
  }
}

void sub_1000B4430(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v11 = 58;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v4 = Strong;
  if (!*(Strong + OBJC_IVAR___AUAAudioDevice_lockDelayMS))
  {
    goto LABEL_11;
  }

  v5 = [a1 physicalFormat];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for AUAStreamFormat();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      type metadata accessor for AUALockDelay();
      v9 = swift_allocObject();
      v10 = v4;
      sub_1000B33E4(v10, v8);
      if (v1)
      {

        return;
      }

      v13 = *&a1[OBJC_IVAR___AUAInputStream_lockDelay];
      *&a1[OBJC_IVAR___AUAInputStream_lockDelay] = v9;

LABEL_11:
      sub_1000B1E98();
      goto LABEL_12;
    }
  }

  sub_10000CA2C();
  swift_allocError();
  *v12 = 1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  swift_willThrow();
LABEL_12:
}

void sub_1000B45B0()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = OBJC_IVAR___AUAStream_logID;
  v10 = qword_100173CB0;
  v11 = v0;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0 + v9;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    v14 = sub_10000A1BC(v13, qword_100179508);
    v15 = v11;
    sub_1000406A0(4, "AUAInputStream_startDirectionalStream", 37, 2, v12, 0, 0xE000000000000000, v14, v15);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v17 = sub_10000A1BC(v16, qword_100179508);
    v18 = *(v16 + 24);
    v19 = type metadata accessor for LogID(0);
    v20 = *(v2 + 16);
    v20(v8, v12 + *(v19 + 20), v1);
    v21 = OSSignposter.logHandle.getter();
    v33 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v32 = v11;
      v23 = v22;
      v24 = swift_slowAlloc();
      v31 = v17;
      v25 = v24;
      v34 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100035760(0, 0xE000000000000000, &v34);
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v33, v26, "AUAInputStream_startDirectionalStream", "%{public}s", v23, 0xCu);
      sub_10000CE78(v25);
      v17 = v31;

      v11 = v32;
    }

    v20(v6, v8, v1);
    v27 = type metadata accessor for OSSignpostIntervalState();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v2 + 8))(v8, v1);
    sub_1000B498C(v11);
    sub_1000461FC(v17, "AUAInputStream_startDirectionalStream", 37, 2);
  }
}

uint64_t sub_1000B498C(char *a1)
{
  v1 = a1;
  v2 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 104);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000BDA50;
  *(v4 + 24) = v3;
  v9[4] = sub_10001F01C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000B4B04;
  v9[3] = &unk_1001647A0;
  v5 = _Block_copy(v9);
  v6 = v2;
  v7 = v1;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B4B2C()
{
  v1 = v0;
  result = [v0 physicalFormat];
  if (result)
  {
    v3 = result;
    type metadata accessor for AUAStreamFormat();
    v4 = swift_dynamicCastClass();
    if (v4 && (v5 = *(v4 + OBJC_IVAR___AUAStreamFormat_altSetting)) != 0)
    {
      v6 = *(v5 + 104);
      v7 = *&v1[OBJC_IVAR___AUAStream_interface];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
        if (v10)
        {
          v11 = sub_1000AA808(0xBu, v10);

          if (v11)
          {

            return 1;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      v12 = IOUSBGetEndpointUsageType(*(v6 + 16));

      return v12 == 2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1000B4D40(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Int sub_1000B4DAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_100124650[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4E34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_100124650[v1]);
  return Hasher._finalize()();
}

_BYTE *sub_1000B4E80@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if ((*result - 3) >= 6)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x20303030100uLL >> (8 * (*result - 3));
  }

  *a2 = v2;
  return result;
}

void sub_1000B4EC8(char *a1, int a2, unsigned int a3, uint64_t a4)
{
  v4[2] = 8;
  *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex) = 0;
  v6 = OBJC_IVAR___AUAStream_interface;
  v7 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 112);
  if (!v7)
  {
    goto LABEL_23;
  }

  if ((a4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = a1;
  v12 = v7;
  v13 = sub_100005814(v12, 8 * a4);
  if (v5)
  {

LABEL_16:
    type metadata accessor for AUAFeedbackTransferBlock(0);
    v23 = *(*v4 + 48);
    v24 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return;
  }

  v29 = a3;
  v14 = v13;

  if ((a4 * 28) >> 64 != (28 * a4) >> 63)
  {
    goto LABEL_22;
  }

  v15 = *(*&v11[v6] + 112);
  if (v15)
  {
    v16 = v15;
    v17 = sub_100005814(v16, 28 * a4);

    v27 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID;
    sub_10000A2A4(&v11[OBJC_IVAR___AUAStream_logID], v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID);
    v26 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer;
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer) = v14;
    v28 = v14;
    bzero([v28 mutableBytes], objc_msgSend(v28, "length"));
    v18 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionListBuffer;
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionListBuffer) = v17;
    v19 = v17;
    bzero([v19 mutableBytes], objc_msgSend(*(v4 + v18), "length"));
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock) = a4;
    v20 = [*(v4 + v18) mutableBytes];
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList) = v20;
    if (a2 == 3)
    {
      if (v29 < 3)
      {
        goto LABEL_15;
      }

      v21 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize;
      if (v29 == 3)
      {
        *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize) = 0;
        return;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if (v29 >= 3)
        {

          *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize) = 0;
          return;
        }

        goto LABEL_15;
      }

      if (v29 < 4)
      {
LABEL_15:
        sub_10000CA2C();
        swift_allocError();
        *v22 = 106;
        *(v22 + 8) = 0;
        *(v22 + 16) = 0xE000000000000000;
        swift_willThrow();

        sub_10000C9D0(v4 + v27);
        v11 = *(v4 + v18);
        goto LABEL_16;
      }

      v21 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize;
      if (v29 != 4)
      {
        v25 = 2;
        goto LABEL_20;
      }
    }

    v25 = 1;
LABEL_20:
    *(v4 + v21) = v25;
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1000B5228()
{
  v1 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex;
  v2 = *(v0 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock);
  v3 = *(v0 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex);
  if (v3 < v2)
  {
    v4 = v0;
    v5 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList;
    v6 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID;
    v42 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer;
    v43 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize;
    v7 = _swiftEmptyArrayStorage;
    v41 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID;
    while (1)
    {
      v8 = (*(v4 + v5) + 28 * v3);
      v9 = *v8;
      if (*v8 <= -536850433)
      {
        if (v9 == -536870163)
        {
LABEL_16:
          _StringGuts.grow(_:)(54);
          v19._countAndFlagsBits = 0xD00000000000001ELL;
          v19._object = 0x800000010012FC00;
          String.append(_:)(v19);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_10011DE90;
          *(v20 + 56) = &type metadata for Int32;
          *(v20 + 64) = &protocol witness table for Int32;
          *(v20 + 32) = v9;
          v21._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v21);

          v22._object = 0x800000010012FC20;
          v22._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v22);
          sub_100038CF0("AUAFeedbackTransferBlock_readFeedback", 37, 2, 0, 0xE000000000000000, v4 + v6);

LABEL_17:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
            v7 = result;
          }

          v24 = *(v7 + 2);
          v23 = *(v7 + 3);
          if (v24 >= v23 >> 1)
          {
            result = sub_100025708((v23 > 1), v24 + 1, 1, v7);
            v7 = result;
          }

          *(v7 + 2) = v24 + 1;
          v25 = &v7[16 * v24];
          *(v25 + 4) = 0;
          *(v25 + 5) = 0;
          goto LABEL_40;
        }

        if (v9 == -536870911)
        {
          return v7;
        }
      }

      else
      {
        if (v9 == -536850432)
        {
          goto LABEL_16;
        }

        if (!v9)
        {
          v10 = v8[3];
          if (v10)
          {
            if (v10 == dword_100124650[*(v4 + v43)])
            {
              v11 = *(v4 + v43);
              v12 = *([*(v4 + v42) bytes] + v8[2]);
              if (v11)
              {
                if (v11 == 1)
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
                    v7 = result;
                  }

                  v15 = *(v7 + 2);
                  v14 = *(v7 + 3);
                  v16 = v15 + 1;
                  if (v15 >= v14 >> 1)
                  {
                    result = sub_100025708((v14 > 1), v15 + 1, 1, v7);
                    v7 = result;
                  }

                  v17 = 1000 * v12;
                  v18 = WORD1(v12);
                }

                else
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
                    v7 = result;
                  }

                  v15 = *(v7 + 2);
                  v37 = *(v7 + 3);
                  v16 = v15 + 1;
                  if (v15 >= v37 >> 1)
                  {
                    result = sub_100025708((v37 > 1), v15 + 1, 1, v7);
                    v7 = result;
                  }

                  v17 = 1000 * v12;
                  v18 = HIDWORD(v12);
                }

                *(v7 + 2) = v16;
                v38 = &v7[16 * v15];
                *(v38 + 4) = v18;
                *(v38 + 5) = v17;
              }

              else
              {
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
                  v7 = result;
                }

                v35 = *(v7 + 2);
                v34 = *(v7 + 3);
                if (v35 >= v34 >> 1)
                {
                  result = sub_100025708((v34 > 1), v35 + 1, 1, v7);
                  v7 = result;
                }

                *(v7 + 2) = v35 + 1;
                v36 = &v7[16 * v35];
                *(v36 + 4) = ((4 * v12) >> 16) & 0x3FF;
                *(v36 + 5) = 1000 * ((4 * v12) & 0xFFFC);
              }
            }

            else
            {
              _StringGuts.grow(_:)(63);
              v29._countAndFlagsBits = 0xD000000000000030;
              v29._object = 0x800000010012FC40;
              String.append(_:)(v29);
              v44 = v8[3];
              v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v30);

              v31._countAndFlagsBits = 0x746365707865202CLL;
              v31._object = 0xEB00000000206465;
              String.append(_:)(v31);
              v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v32);

              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v33 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v33, qword_100179508);
              v6 = v41;
              sub_100039F58(4, v4 + v41, HIDWORD(v44), 0xE000000000000000);
            }

            goto LABEL_40;
          }

          goto LABEL_17;
        }
      }

      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10011DE90;
      *(v26 + 56) = &type metadata for Int32;
      *(v26 + 64) = &protocol witness table for Int32;
      *(v26 + 32) = v9;
      v27._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v27);

      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v28, qword_100179508);
      sub_100039F58(4, v4 + v6, 0x7461747320646162, 0xEB00000000207375);

LABEL_40:
      v39 = *(v4 + v1);
      v40 = __OFADD__(v39, 1);
      v3 = v39 + 1;
      if (v40)
      {
        __break(1u);
        return result;
      }

      *(v4 + v1) = v3;
      if (v3 >= v2)
      {
        return v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000B58D0()
{
  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1000B6528()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame];

    *(v0 + 40) = v2;
    _StringGuts.grow(_:)(34);

    v6 = *(v0 + 40);
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x7254726550736D20;
    v4._object = 0xEF20726566736E61;
    String.append(_:)(v4);
    LODWORD(v6) = *(v0 + 48);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    sub_100038CD8("AUAOutputExplicitFeedbackStream_startFeedback", 45, 2, 0x676E697472617473, 0xEF20656D61726620, v0 + OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID);

    return sub_1000B6688();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6688()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v39 = 0x20656D617266;
  v40 = 0xE600000000000000;
  v38 = *(v0 + 40);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v12 = v39;
  v11 = v40;
  v13 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  v14 = qword_100173CB0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = v1 + v13;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v17 = sub_10000A1BC(v16, qword_100179508);

    sub_1000445D0(4, "AUAOutputExplicitFeedbackStream_enqueueAvailableFeedbackTransferBlocks", 70, 2, v15, v12, v11, v17, v1);
  }

  else
  {
    v34 = v12;
    v36 = v7;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AUALog(0);
    v20 = sub_10000A1BC(v19, qword_100179508);
    v21 = *(v19 + 24);
    v22 = v15 + *(type metadata accessor for LogID(0) + 20);
    v35 = *(v3 + 16);
    v35(v9, v22, v2);

    v37 = v20;
    v23 = OSSignposter.logHandle.getter();
    v24 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v3;
      v27 = v26;
      v39 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_100035760(v34, v11, &v39);
      v28 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v28, "AUAOutputExplicitFeedbackStream_enqueueAvailableFeedbackTransferBlocks", "%{public}s", v25, 0xCu);
      sub_10000CE78(v27);
      v3 = v33;
    }

    v35(v36, v9, v2);
    v29 = type metadata accessor for OSSignpostIntervalState();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v3 + 8))(v9, v2);
    sub_1000B6AEC(v1);

    sub_1000461FC(v37, "AUAOutputExplicitFeedbackStream_enqueueAvailableFeedbackTransferBlocks", 70, 2);
  }
}

void sub_1000B6AEC(uint64_t a1)
{
  v90 = type metadata accessor for LogID(0);
  v2 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v91 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  swift_beginAccess();
  v89 = "FeedbackTransferBlocks";
  v88 = &v101;
  v84 = 0x800000010012FAF0;
  v83 = "changePhysicalFormat(_:)";
  v85 = xmmword_10011DE90;
  while (1)
  {
    v4 = *(a1 + 24);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v26 = *(a1 + 24);
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v5 = *(a1 + 24);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v27 = *(a1 + 24);
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_91;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_91;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {

      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v6 = *(v5 + 32);
    }

    v7 = *(a1 + 24);
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 != 0;
      if (v8 < v9)
      {
        goto LABEL_92;
      }

      goto LABEL_11;
    }

    v28 = v7 < 0 ? *(a1 + 24) : (v7 & 0xFFFFFFFFFFFFFF8);
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29 < 0)
    {
      break;
    }

    v8 = v29;
    v9 = v29 != 0;
    if (_CocoaArrayWrapper.endIndex.getter() < v9)
    {
      goto LABEL_92;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v8)
    {
      goto LABEL_94;
    }

LABEL_11:
    if ((v7 & 0xC000000000000001) != 0 && v8 > 1)
    {
      type metadata accessor for AUAFeedbackTransferBlock(0);
      swift_bridgeObjectRetain_n();
      v10 = v9;
      do
      {
        v11 = v10 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v10);
        v10 = v11;
      }

      while (v8 != v11);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v7 >> 62)
    {
      _CocoaArrayWrapper.subscript.getter();
      v9 = v21;
      v12 = v22;

      v94 = v6;
      if ((v12 & 1) == 0)
      {
LABEL_26:
        v15 = v12 >> 1;
        v16 = __OFSUB__(v12 >> 1, v9);
        v17 = (v12 >> 1) - v9;
        v23 = v16;
        swift_unknownObjectRetain();
        if (v23)
        {
          goto LABEL_102;
        }

        if (v17)
        {
          goto LABEL_31;
        }

LABEL_55:
        swift_unknownObjectRelease();
        v18 = _swiftEmptyArrayStorage;
LABEL_56:
        v19 = v91;
        v20 = v94;
        goto LABEL_57;
      }
    }

    else
    {
      v12 = (2 * v8) | 1;
      v94 = v6;
      if ((v12 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = v13[2];

    v15 = v12 >> 1;
    v16 = __OFSUB__(v12 >> 1, v9);
    v17 = (v12 >> 1) - v9;
    if (v16)
    {
      goto LABEL_103;
    }

    if (v14 != v17)
    {
      swift_unknownObjectRelease();
      if (!v17)
      {
        goto LABEL_55;
      }

LABEL_31:
      if (v17 < 1)
      {
        v18 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
        v18 = swift_allocObject();
        v24 = j__malloc_size(v18);
        v25 = v24 - 32;
        if (v24 < 32)
        {
          v25 = v24 - 25;
        }

        v18[2] = v17;
        v18[3] = (2 * (v25 >> 3)) | 1;
      }

      swift_unknownObjectRelease();
      if (v9 == v15)
      {
        goto LABEL_105;
      }

      type metadata accessor for AUAFeedbackTransferBlock(0);
      swift_arrayInitWithCopy();
      goto LABEL_56;
    }

    v18 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v19 = v91;
    v20 = v94;
    if (v18)
    {
      goto LABEL_58;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_57:
    swift_unknownObjectRelease();
LABEL_58:
    v30 = *(a1 + 24);
    *(a1 + 24) = v18;

    *(v20 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex) = 0;
    v31 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock;
    v32 = *(v20 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock);
    if (v32 < 0)
    {
      goto LABEL_95;
    }

    if (v32)
    {
      v33 = 0;
      v34 = dword_100124650[*(v20 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize)];
      v35 = *(v20 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList) + 12;
      while (1)
      {
        *(v35 - 12) = -536870911;
        *(v35 - 8) = v34;
        if (v33 == &_mh_execute_header)
        {
          break;
        }

        *(v35 - 4) = v33;
        *v35 = 0;
        v33 = (v33 + 8);
        *(v35 + 4) = 3758117135;
        *(v35 + 12) = 0;
        v35 += 28;
        if (!--v32)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      swift_unknownObjectRelease();
      __break(1u);
    }

LABEL_63:
    v36 = *(a1 + 48);
    if (!v36)
    {
      goto LABEL_96;
    }

    v37 = *(a1 + 40);
    if (v37 % v36)
    {
      aBlock = 0;
      v100 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v38._countAndFlagsBits = 0xD00000000000002DLL;
      v38._object = (v89 | 0x8000000000000000);
      String.append(_:)(v38);
      v98 = v37;
      v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v39);

      v40._countAndFlagsBits = 0x7254726550534D20;
      v40._object = 0xEF20726566736E61;
      String.append(_:)(v40);
      LODWORD(v98) = v36;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      v42 = aBlock;
      v43 = v100;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v44 = sub_10000A1BC(v90, qword_1001794F0);
      sub_10000A2A4(v44, v19);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v45, qword_100179508);
      sub_100039F58(4, v19, v42, v43);

      sub_10000C9D0(v19);
    }

    v46 = *(*(a1 + 16) + 120);
    v92 = v36;
    v93 = v31;
    if (v46)
    {
      v47 = *(v20 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer);
      v48 = *(v20 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList);
      v49 = *(v20 + v31);
      v50 = *(v46 + 16);

      if (([v50 increment] & 1) == 0)
      {

        goto LABEL_83;
      }

      v51 = *(v46 + 24);
      v52 = swift_allocObject();
      v52[2] = sub_1000BA5B8;
      v52[3] = a1;
      v52[4] = v46;
      v103 = sub_1000BA5C0;
      v104 = v52;
      aBlock = _NSConcreteStackBlock;
      v100 = 1107296256;
      v101 = sub_1000B9C68;
      v102 = &unk_100164728;
      v53 = _Block_copy(&aBlock);

      aBlock = 0;
      LOBYTE(v51) = [v51 enqueueIORequestWithData:v47 transactionList:v48 transactionListCount:v49 firstFrameNumber:v37 options:0 error:&aBlock completionHandler:v53];
      _Block_release(v53);
      if (v51)
      {
        v54 = aBlock;

        v20 = v94;
        goto LABEL_83;
      }

      v57 = aBlock;
      v55 = _convertNSErrorToError(_:)();

      swift_willThrow();
      [*(v46 + 16) decrement];
      swift_willThrow();
    }

    else
    {
      sub_10000CA2C();
      v55 = swift_allocError();
      *v56 = 1;
      *(v56 + 8) = 0;
      *(v56 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    v98 = v55;
    swift_errorRetain();
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    sub_10001EBA8(0, &qword_100175168, NSError_ptr);
    swift_dynamicCast();
    v58 = v97;
    v59 = [v97 code];
    if (v59 < 0xFFFFFFFF80000000)
    {
      goto LABEL_100;
    }

    v60 = v59;
    if (v59 > 0x7FFFFFFF)
    {
      goto LABEL_101;
    }

    aBlock = 0x20726F727265;
    v100 = 0xE600000000000000;
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v61 = swift_allocObject();
    *(v61 + 16) = v85;
    *(v61 + 56) = &type metadata for Int32;
    *(v61 + 64) = &protocol witness table for Int32;
    *(v61 + 32) = v60;
    v62._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v62);

    sub_100038CF0("AUAOutputExplicit_enqueueAvailableFeedbackTransferBlocks_error", 62, 2, aBlock, v100, a1 + v86);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_104;
    }

    v64 = Strong;

    aBlock = 0xD000000000000028;
    v100 = v84;
    v65._countAndFlagsBits = 8236;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    v66._object = (v83 | 0x8000000000000000);
    v66._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v66);
    v67._countAndFlagsBits = 2108704;
    v67._object = 0xE300000000000000;
    String.append(_:)(v67);
    v96 = 1415;
    v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v68);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v100, &v64[OBJC_IVAR___AUAAudioDevice_logID]);

    v69 = *&v64[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v70 = swift_allocObject();
    v70[2] = AUAError.init(_:message:);
    v70[3] = 0;
    aBlock = sub_100038564;
    v100 = v70;
    v71 = *(v69 + 16);
    v72 = __chkstk_darwin(v70);
    __chkstk_darwin(v72);

    os_unfair_lock_lock(v71 + 4);
    sub_10003854C(&v96);
    v87 = 0;
    os_unfair_lock_unlock(v71 + 4);
    LOBYTE(v69) = v96;

    v20 = v94;
    if (v69)
    {
      v73 = swift_allocObject();
      *(v73 + 16) = v64;
      v103 = sub_10001EFC8;
      v104 = v73;
      aBlock = _NSConcreteStackBlock;
      v100 = 1107296256;
      v101 = sub_1000172D4;
      v102 = &unk_1001646D8;
      v74 = _Block_copy(&aBlock);
      v75 = v64;

      v76 = type metadata accessor for AUAAudioDevice();
      v95.receiver = v75;
      v95.super_class = v76;
      objc_msgSendSuper2(&v95, "requestConfigurationChange:", v74);
      _Block_release(v74);
    }

LABEL_83:
    v77 = *(v20 + v93);
    if ((v77 & 0x8000000000000000) != 0)
    {
      goto LABEL_97;
    }

    if (!is_mul_ok(v92, v77))
    {
      goto LABEL_98;
    }

    v78 = v92 * v77;
    v79 = *(a1 + 40);
    v80 = __CFADD__(v79, v78);
    v81 = v79 + v78;
    if (v80)
    {
      goto LABEL_99;
    }

    *(a1 + 40) = v81;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v82 = *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  __break(1u);
  os_unfair_lock_unlock(v28 + 4);
  __break(1u);
}

uint64_t sub_1000B7860()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  v11 = qword_100173CB0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = v1 + v10;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    v14 = sub_10000A1BC(v13, qword_100179508);

    sub_10003A410(4, "AUAOutputExplicitFeedbackStream_readFeedback", 44, 2, v12, 0, 0xE000000000000000, v14, v1);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v17 = sub_10000A1BC(v16, qword_100179508);
    v18 = *(v16 + 24);
    v19 = type metadata accessor for LogID(0);
    v20 = *(v3 + 16);
    v20(v9, v12 + *(v19 + 20), v2);
    v21 = OSSignposter.logHandle.getter();
    v33 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v32 = v17;
      v23 = v22;
      v24 = swift_slowAlloc();
      v31 = v20;
      v25 = v24;
      v34 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100035760(0, 0xE000000000000000, &v34);
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v33, v26, "AUAOutputExplicitFeedbackStream_readFeedback", "%{public}s", v23, 0xCu);
      sub_10000CE78(v25);
      v20 = v31;

      v17 = v32;
    }

    v20(v7, v9, v2);
    v27 = type metadata accessor for OSSignpostIntervalState();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v3 + 8))(v9, v2);
    sub_1000B7C4C(v1);
    sub_1000461FC(v17, "AUAOutputExplicitFeedbackStream_readFeedback", 44, 2);
  }
}

uint64_t sub_1000B7C4C(void *a1)
{
  v29 = type metadata accessor for LogID(0);
  v2 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  while (1)
  {
    v4 = a1[4];
    if (v4 >> 62)
    {
      break;
    }

    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

LABEL_4:
    if ((v4 & 0xC000000000000001) != 0)
    {

      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v5 = *(v4 + 32);
    }

    v4 = a1[8];

    v6 = sub_1000B5228();
    sub_10005C530(v6);

    if (*(v5 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex) < *(v5 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock))
    {
    }

    v7 = a1[4];
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v4 = a1[4];
      }

      else
      {
        v4 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v8 = result;
      v9 = result != 0;
      if (_CocoaArrayWrapper.endIndex.getter() < v9)
      {
        goto LABEL_50;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < v8)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 != 0;
      if (v8 < v9)
      {
        goto LABEL_50;
      }
    }

    if ((v7 & 0xC000000000000001) != 0 && v8 > 1)
    {
      type metadata accessor for AUAFeedbackTransferBlock(0);
      swift_bridgeObjectRetain_n();
      v10 = v9;
      do
      {
        v11 = v10 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v10);
        v10 = v11;
      }

      while (v8 != v11);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v7 >> 62)
    {
      v12 = _CocoaArrayWrapper.subscript.getter();
      v4 = v14;
      v9 = v15;
      v13 = v16;

      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = v7 & 0xFFFFFFFFFFFFFF8;
      v4 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
      v13 = (2 * v8) | 1;
      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = _swiftEmptyArrayStorage;
    }

    v20 = v19[2];

    if (__OFSUB__(v13 >> 1, v9))
    {
      goto LABEL_52;
    }

    if (v20 != (v13 >> 1) - v9)
    {
      swift_unknownObjectRelease_n();
LABEL_20:
      sub_1000B9E44(v12, v4, v9, v13);
      v18 = v17;
      goto LABEL_27;
    }

    v18 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v18)
    {
      goto LABEL_28;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_27:
    swift_unknownObjectRelease();
LABEL_28:
    v21 = a1[4];
    a1[4] = v18;

    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((a1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((a1[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  if (v4 < 0)
  {
    v22 = a1[4];
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_4;
  }

LABEL_44:
  v4 = "no transferBlocks enqueued";
  if (qword_100173CB8 == -1)
  {
    goto LABEL_45;
  }

LABEL_53:
  swift_once();
LABEL_45:
  v25 = v4 - 32;
  v26 = sub_10000A1BC(v29, qword_1001794F0);
  v27 = v30;
  sub_10000A2A4(v26, v30);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v28, qword_100179508);
  sub_100039F58(4, v27, 0xD00000000000001ALL, (v25 | 0x8000000000000000));
  return sub_10000C9D0(v27);
}

uint64_t sub_1000B80F0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  swift_unknownObjectWeakDestroy();
  v4 = v0[8];

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000B817C()
{
  v1 = *(v0 + OBJC_IVAR___AUAStream_interface);
  v2 = v1[9];
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 3;
  }

  if (v2 < 0)
  {
    v7 = v1[9];
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    return 3;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v2 + 32);
  }

  v4 = *(v3 + 104);

  v5 = *(v4 + 128);

  if (v5 != 1)
  {
    return v5;
  }

  v2 = v1[9];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

LABEL_19:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v9 = *(v8 + 112);

    swift_unknownObjectRelease();
    if (v9)
    {

      return 1;
    }

    goto LABEL_23;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(*(v2 + 32) + 112))
    {
      return 1;
    }

LABEL_23:
    swift_beginAccess();
    v5 = 3;
    if (v1[2])
    {
      v10 = v1[3];
      v11 = v1[2];
      ObjectType = swift_getObjectType();
      v13 = *(v10 + 8);
      swift_unknownObjectRetain();
      v13(v16, ObjectType, v10);
      swift_unknownObjectRelease();
      sub_100093C84();
      v15 = v14;
      sub_1000212F0(v16);
      if (v15)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1000B838C()
{
  result = [v0 physicalFormat];
  if (result)
  {
    v2 = result;
    type metadata accessor for AUAStreamFormat();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = OBJC_IVAR___AUAStreamFormat_altSetting;
    v5 = *(v3 + OBJC_IVAR___AUAStreamFormat_altSetting);
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = v3;
    v7 = *(v5 + 104);
    v8 = v7[2];
    v9 = v7[9];
    v10 = v7[10];
    v11 = v7[11];

    v12 = IOUSBGetEndpointSynchronizationType(v8);
    if (IOUSBGetEndpointDirection(v8) == 1 && !v12)
    {
      goto LABEL_11;
    }

    if (v12 == 1)
    {
      while (1)
      {
        v13 = *(v6 + v4);

        if (!v13)
        {
          break;
        }

        v2 = *(v13 + 112);

        if (!v2)
        {
          break;
        }

        v14 = v2[13];

        result = (v14 - 1);
        if (v14)
        {
          return result;
        }

        __break(1u);
LABEL_11:
        if (IOUSBGetEndpointUsageType(v8))
        {

          goto LABEL_14;
        }

        wMaxPacketSize = v8->wMaxPacketSize;

        if ((wMaxPacketSize - 9) >= 0xFFFFFFFA)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
    }

    return 0;
  }

  return result;
}

void sub_1000B851C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = OBJC_IVAR___AUAStream_logID;
  v10 = qword_100173CB0;
  v11 = v0;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0 + v9;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    v14 = sub_10000A1BC(v13, qword_100179508);
    v15 = v11;
    sub_100041320(4, "AUAOutputStream_startDirectionalStream", 38, 2, v12, 0, 0xE000000000000000, v14, v15);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v17 = sub_10000A1BC(v16, qword_100179508);
    v18 = *(v16 + 24);
    v19 = type metadata accessor for LogID(0);
    v20 = *(v2 + 16);
    v20(v8, v12 + *(v19 + 20), v1);
    v21 = OSSignposter.logHandle.getter();
    v33 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v32 = v11;
      v23 = v22;
      v24 = swift_slowAlloc();
      v31 = v17;
      v25 = v24;
      v34 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100035760(0, 0xE000000000000000, &v34);
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v33, v26, "AUAOutputStream_startDirectionalStream", "%{public}s", v23, 0xCu);
      sub_10000CE78(v25);
      v17 = v31;

      v11 = v32;
    }

    v20(v6, v8, v1);
    v27 = type metadata accessor for OSSignpostIntervalState();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v2 + 8))(v8, v1);
    sub_1000B88F8(v11);
    sub_1000461FC(v17, "AUAOutputStream_startDirectionalStream", 38, 2);
  }
}

uint64_t sub_1000B88F8(char *a1)
{
  v1 = a1;
  v2 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 104);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000BA570;
  *(v4 + 24) = v3;
  v9[4] = sub_10001DC08;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000B4B04;
  v9[3] = &unk_100164660;
  v5 = _Block_copy(v9);
  v6 = v2;
  v7 = v1;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B8A70(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  if (*(a1 + *a2))
  {
    v4 = *(a1 + *a2);

    a3(v5);
  }

  return sub_1000ADCB0();
}

void sub_1000B8AC8()
{
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = [v0 physicalFormat];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for AUAStreamFormat();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

LABEL_12:
    sub_10000CA2C();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v14 = *&v13[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v14)
  {
    sub_10000CA2C();
    swift_allocError();
    v25 = 83;
LABEL_15:
    *v24 = v25;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  if (!*(*&v0[OBJC_IVAR___AUAStream_interface] + 112))
  {
    sub_10000CA2C();
    swift_allocError();
    v25 = 1;
    goto LABEL_15;
  }

  v52 = v13;
  v53 = v1;
  v54 = 0x74616E7265746C61;
  v55 = 0xEA00000000002065;
  v57 = *(v14[2] + 3);

  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v48 = v54;
  v49 = v55;
  v16 = OBJC_IVAR___AUAStream_logID;
  v17 = qword_100173CB0;

  v51 = v2;
  v50 = v12;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = &v2[v16];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AUALog(0);
    v20 = sub_10000A1BC(v19, qword_100179508);

    v21 = v51;
    v22 = v50;
    sub_10003ECFC(4, "AUAOuputStream_prepareStream", 28, 2, v18, v48, v49, v20, v21, v14, v52);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    v27 = sub_10000A1BC(v26, qword_100179508);
    v28 = *(v26 + 24);
    v29 = v18 + *(type metadata accessor for LogID(0) + 20);
    v46 = *(v4 + 16);
    v46(v10, v29, v3);

    v47 = v27;
    v31 = v30;
    v32 = OSSignposter.logHandle.getter();
    v33 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v34 = swift_slowAlloc();
      v45 = v32;
      v56 = v33;
      v35 = v34;
      v44 = swift_slowAlloc();
      v54 = v44;
      *v35 = 136446210;
      v36 = sub_100035760(v48, v31, &v54);

      *(v35 + 4) = v36;
      v37 = OSSignpostID.rawValue.getter();
      v38 = v45;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v56, v37, "AUAOuputStream_prepareStream", "%{public}s", v35, 0xCu);
      sub_10000CE78(v44);
    }

    else
    {
    }

    v46(v8, v10, v3);
    v39 = type metadata accessor for OSSignpostIntervalState();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v4 + 8))(v10, v3);
    v42 = v51;
    sub_1000B9084(v51, v14, v52);
    sub_1000461FC(v47, "AUAOuputStream_prepareStream", 28, 2);

    v43 = v50;
  }
}

void sub_1000B9084(char *a1, uint64_t a2, uint64_t a3)
{
  sub_1000B1E98();
  if (v3)
  {
    return;
  }

  v7 = *&a1[OBJC_IVAR___AUAOutputStream_sampleManager];
  v8 = *(a2 + 104);
  sub_10005B254(a1, v8);
  v9 = v8[2];
  v10 = v8[9];
  v11 = v8[10];
  v12 = v8[11];

  v13 = IOUSBGetEndpointSynchronizationType(v9);
  if (IOUSBGetEndpointDirection(v9) != 1 || v13 != 0)
  {

    if (v13 != 1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (IOUSBGetEndpointUsageType(v9))
  {

    return;
  }

  wMaxPacketSize = v9->wMaxPacketSize;

  if ((wMaxPacketSize - 9) < 0xFFFFFFFA)
  {
LABEL_12:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v17 = Strong, v18 = AUAAudioDevice.hasImplicitFeedbackStream()(), v17, !v18))
    {
      v19 = *(a3 + OBJC_IVAR___AUAStreamFormat_altSetting);
      if (v19 && *(v19 + 112))
      {
        v20 = type metadata accessor for AUAOutputExplicitFeedbackStream(0);
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        v23 = swift_allocObject();
        v24 = a1;
        sub_1000B5954();
        v27 = *&v24[OBJC_IVAR___AUAOutputStream_explicitFeedback];
        *&v24[OBJC_IVAR___AUAOutputStream_explicitFeedback] = v23;
      }

      else
      {
        v25 = OBJC_IVAR___AUAStream_logID;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v26, qword_100179508);
        sub_100039F58(4, &a1[v25], 0xD000000000000036, 0x800000010012F7D0);
      }
    }
  }
}

char *sub_1000B9374(char *result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = *a3;
  v7 = *&result[*a3];
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v4;
    v12 = v5;
    *&result[v6] = v9;
    if (v9 == 1)
    {
      v10.receiver = result;
      v10.super_class = a4(0);
      return objc_msgSendSuper2(&v10, "startStream");
    }
  }

  return result;
}

void sub_1000B93DC()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = OBJC_IVAR___AUAStream_logID;
  v10 = qword_100173CB0;
  v11 = v0;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0 + v9;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    v14 = sub_10000A1BC(v13, qword_100179508);
    v15 = v11;
    sub_10004524C(4, "AUAOuputStream_stop", 19, 2, v12, 0, 0xE000000000000000, v14, v15);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v17 = sub_10000A1BC(v16, qword_100179508);
    v18 = *(v16 + 24);
    v19 = type metadata accessor for LogID(0);
    v20 = *(v2 + 16);
    v20(v8, v12 + *(v19 + 20), v1);
    v21 = OSSignposter.logHandle.getter();
    v33 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v32 = v11;
      v23 = v22;
      v24 = swift_slowAlloc();
      v31 = v17;
      v25 = v24;
      v34 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100035760(0, 0xE000000000000000, &v34);
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v33, v26, "AUAOuputStream_stop", "%{public}s", v23, 0xCu);
      sub_10000CE78(v25);
      v17 = v31;

      v11 = v32;
    }

    v20(v6, v8, v1);
    v27 = type metadata accessor for OSSignpostIntervalState();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v2 + 8))(v8, v1);
    sub_1000B97B8(v11);
    sub_1000461FC(v17, "AUAOuputStream_stop", 19, 2);
  }
}

char *sub_1000B97B8(char *result)
{
  v3 = *&result[OBJC_IVAR___AUAOutputStream_startCount];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (v4)
  {
    v14 = v1;
    v15 = v2;
    v6 = result;
    *&result[OBJC_IVAR___AUAOutputStream_startCount] = v5;
    if (!v5)
    {
      v13.receiver = result;
      v13.super_class = type metadata accessor for AUAOutputStream(0);
      objc_msgSendSuper2(&v13, "stopStream");
      v7 = OBJC_IVAR___AUAOutputStream_explicitFeedback;
      v8 = *&v6[OBJC_IVAR___AUAOutputStream_explicitFeedback];
      if (v8)
      {
        v9 = *(v8 + 16);
        if (*(v9 + 120))
        {
          v10 = *&v6[OBJC_IVAR___AUAOutputStream_explicitFeedback];

          sub_100116498(0);

          v11 = *(v9 + 120);
          *(v9 + 120) = 0;

          v12 = *&v6[v7];
        }
      }

      *&v6[v7] = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B98DC()
{
  v1 = *(v0 + OBJC_IVAR___AUAOutputStream_sampleManager);

  v2 = *(v0 + OBJC_IVAR___AUAOutputStream_explicitFeedback);
}

uint64_t sub_1000B9C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1000B9CE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B9D3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000B9D74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_100001AB4(&qword_100175398, &qword_100121F30);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000B9E44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for AUAFeedbackTransferBlock(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1000B9F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000B9F44()
{
  result = qword_100177668;
  if (!qword_100177668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177668);
  }

  return result;
}

uint64_t sub_1000B9F98(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B9FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BA00C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1000BA05C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000BA094()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000BA258()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BA34C()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000BA4E4()
{
  result = qword_100177B40;
  if (!qword_100177B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B40);
  }

  return result;
}

uint64_t sub_1000BA538()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  if (!a4)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v11 = *(a5 + 24);
  swift_unknownObjectRetain();
  v12 = v11(ObjectType, a5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v15)
    {
      v16 = sub_1000AA808(0x16u, v15);

      if (v16)
      {

LABEL_9:
        swift_unknownObjectRelease();
        return 0;
      }
    }

    else
    {
    }
  }

  v17 = *(v12 + 49);

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  v18 = sub_1000ABC00(type metadata accessor for ActiveInputTerminal, &protocol witness table for ActiveInputTerminal);
  result = sub_1000ABC00(type metadata accessor for ActiveOutputTerminal, &protocol witness table for ActiveOutputTerminal);
  v20 = (v18 + result);
  if (!__CFADD__(v18, result))
  {
    v21 = *(a3 + 16);
    v22 = (a3 + 32);
    v23 = v21 + 1;
    while (--v23)
    {
      v24 = v22[3];
      v25 = v22[4];
      sub_10001EAB8(v22, v24);
      v26 = sub_100079BFC(v24, *(v25 + 8));
      v22 += 5;
      v27 = __CFADD__(v20, v26);
      v20 = (v20 + v26);
      if (v27)
      {
        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    return v20;
  }

  __break(1u);
  return result;
}

void sub_1000BAFD8(unint64_t a1, void *a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = *(a1 + 72);
  v159 = v9 >> 62;
  v158 = v2;
  v157 = a2;
  v156 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v7;
  if (v9 >> 62)
  {
    goto LABEL_134;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v162 = a1;
  v161 = v9;
  if (!v10)
  {
    goto LABEL_50;
  }

  v11 = v9 & 0xC000000000000001;
  swift_beginAccess();
  v12 = 0;
  v160 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v11)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (v12 >= *(v160 + 16))
      {
        goto LABEL_130;
      }

      v13 = *(v9 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }
    }

    if (*(a1 + 16))
    {
      break;
    }

    v170 = 0;
    v168 = 0u;
    v169 = 0u;
LABEL_6:
    sub_10000D040(&v168, &qword_100176188, &qword_100124520);
    ++v12;
    if (v14 == v10)
    {
      goto LABEL_50;
    }
  }

  v15 = *(a1 + 24);
  v16 = *(a1 + 16);
  ObjectType = swift_getObjectType();
  v18 = *(v15 + 208);
  swift_unknownObjectRetain();
  v18(&v168, v13, ObjectType, v15);
  v9 = v161;
  a1 = v162;
  swift_unknownObjectRelease();

  if (!*(&v169 + 1))
  {
    goto LABEL_6;
  }

  sub_10000D0A0(&v168, &v172);
  sub_100001AB4(&qword_100175380, &qword_100120E70);
  active = type metadata accessor for ActiveOutputTerminal();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    if (v159)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (!v51)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v51 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        goto LABEL_101;
      }
    }

    v52 = v9 & 0xC000000000000001;
    swift_beginAccess();
    v53 = 0;
    v160 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v52)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v53 >= *(v160 + 16))
        {
          goto LABEL_131;
        }

        v54 = *(v9 + 8 * v53 + 32);

        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_129;
        }
      }

      if (*(a1 + 16))
      {
        v56 = v162[3];
        v57 = swift_getObjectType();
        v58 = *(v56 + 208);
        swift_unknownObjectRetain();
        v59 = v56;
        a1 = v162;
        v58(&v168, v54, v57, v59);
        v9 = v161;
        swift_unknownObjectRelease();

        if (*(&v169 + 1))
        {
          sub_10000D0A0(&v168, &v172);
          sub_100001AB4(&qword_100175380, &qword_100120E70);
          v161 = type metadata accessor for ActiveInputTerminal();
          if (swift_dynamicCast())
          {
            v60 = *(a1 + 16);
            if (v60)
            {
              v154 = v168;
              v9 = *(a1 + 24);
              v61 = swift_getObjectType();
              v62 = *(v9 + 56);
              swift_unknownObjectRetain();
              v149 = v60;
              v147 = v61;
              v148 = v9;
              v63 = v62(v61, v9);
              v64 = *(v63 + 16);
              if (!v64)
              {
                v150 = _swiftEmptyArrayStorage;
LABEL_113:

                v113 = v150;
                v114 = v150[2];
                if (v114)
                {
                  v115 = v162;
                  if (v114 != 1)
                  {
                    *&v172 = 0;
                    *(&v172 + 1) = 0xE000000000000000;
                    _StringGuts.grow(_:)(39);
                    v116 = ActiveFunction.deviceName.getter(v147, v148);
                    v118 = v117;

                    *&v172 = v116;
                    *(&v172 + 1) = v118;
                    v119._countAndFlagsBits = 0xD000000000000025;
                    v119._object = 0x8000000100130120;
                    String.append(_:)(v119);
                    v99 = *(&v172 + 1);
                    v120 = v172;
                    if (qword_100173CB8 != -1)
                    {
                      swift_once();
                    }

                    v121 = sub_10000A1BC(v155, qword_1001794F0);
                    v93 = v156;
                    sub_10000A2A4(v121, v156);
                    if (qword_100173CC0 != -1)
                    {
                      swift_once();
                    }

                    v122 = type metadata accessor for AUALog(0);
                    v123 = sub_10000A1BC(v122, qword_100179508);
                    v124 = v120;
                    v98 = v123;
                    sub_100039F58(1, v93, v124, v99);

                    sub_10000C9D0(v93);
                    if (!v113[2])
                    {
                      goto LABEL_136;
                    }
                  }

                  v105 = 1869968496;
                  v126 = v113[4];
                  v125 = v113[5];
                  v127 = v113[6];

                  v128 = objc_allocWithZone(type metadata accessor for AUAOutputStream(0));
                  v129 = OBJC_IVAR___AUAOutputStream_sampleManager;
                  v130 = type metadata accessor for AUASampleManager();
                  v131 = *(v130 + 48);
                  v132 = *(v130 + 52);
                  swift_allocObject();

                  *&v128[v129] = sub_10005D79C();
                  *&v128[OBJC_IVAR___AUAOutputStream_startCount] = 0;
                  *&v128[OBJC_IVAR___AUAOutputStream_explicitFeedback] = 0;
                  *(&v173 + 1) = v161;
                  v174 = &protocol witness table for ActiveInputTerminal;
                  *&v172 = v154;
                  *(&v169 + 1) = type metadata accessor for ActiveOutputTerminal();
                  v170 = &protocol witness table for ActiveOutputTerminal;
                  *&v168 = v126;

                  v133 = v157;

                  v134 = v158;
                  v135 = sub_1000BA920(v115, 1869968496, v126, v125, v127, &v172, &v168, v133);

                  swift_unknownObjectRelease();

                  swift_bridgeObjectRelease_n();

                  if (!v134)
                  {
                    goto LABEL_126;
                  }

                  return;
                }

                sub_10000CA2C();
                swift_allocError();
                *v138 = 102;
                *(v138 + 8) = 0;
                *(v138 + 16) = 0xE000000000000000;
                swift_willThrow();

                v137 = &v170;
LABEL_124:
                v139 = *(v137 - 32);
                swift_unknownObjectRelease();
                return;
              }

              a1 = 0;
              v65 = (v63 + 32);
              v150 = _swiftEmptyArrayStorage;
              v66 = v154;
              v153 = v63;
              v152 = v64;
              v151 = (v63 + 32);
              while (2)
              {
                if (a1 >= *(v63 + 16))
                {
                  goto LABEL_133;
                }

                v67 = &v65[3 * a1];
                v68 = v67[1];
                ++a1;
                if (*(v68 + 72) != *(v66 + 72))
                {
LABEL_70:
                  if (a1 == v64)
                  {
                    goto LABEL_113;
                  }

                  continue;
                }

                break;
              }

              v69 = *v67;
              v70 = v67[2];
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              v159 = v69;
              v160 = v70;
              if (Strong)
              {
                v72 = *(v69 + 24);
                v73 = *(v69 + 72);
                if (*(v69 + 80))
                {
                  v9 = 0;
                }

                else
                {
                  v9 = *(v69 + 72);
                }

                v74 = swift_getObjectType();

                sub_100052184(v9, v74, v72, &v168);
                swift_unknownObjectRelease();
              }

              else
              {
                v170 = 0;
                v168 = 0u;
                v169 = 0u;
              }

              v165 = v169;
              v164 = v168;
              v166 = v170;
              if (*(&v169 + 1))
              {
                sub_100001AB4(&qword_100174F60, &qword_100121090);
                sub_100001AB4(&qword_100174F68, &unk_100120B90);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  v174 = 0;
                  v172 = 0u;
                  v173 = 0u;
                }
              }

              else
              {
                sub_10000D040(&v164, &qword_100174FB0, &unk_100120FC0);
                v172 = 0u;
                v173 = 0u;
                v174 = 0;
              }

              sub_10000D0B8(&v172, &v168, &qword_100174F70, &qword_100120FD0);
              v75 = *(&v169 + 1);
              sub_10000D040(&v168, &qword_100174F70, &qword_100120FD0);
              if (!v75 && !*(v160 + 16))
              {
LABEL_85:
                sub_10000D040(&v172, &qword_100174F70, &qword_100120FD0);
                v76 = v150;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v175 = v76;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100046804(0, v76[2] + 1, 1);
                  v76 = v175;
                }

                v66 = v154;
                v63 = v153;
                v64 = v152;
                v65 = v151;
                v78 = v159;
                v80 = v76[2];
                v79 = v76[3];
                v81 = v160;
                if (v80 >= v79 >> 1)
                {
                  v9 = v159;
                  v90 = v160;
                  sub_100046804((v79 > 1), v80 + 1, 1);
                  v81 = v90;
                  v78 = v9;
                  v65 = v151;
                  v64 = v152;
                  v63 = v153;
                  v66 = v154;
                  v76 = v175;
                }

                v76[2] = v80 + 1;
                v150 = v76;
                v82 = &v76[3 * v80];
                v82[4] = v78;
                v82[5] = v68;
                v82[6] = v81;
                goto LABEL_70;
              }

              while (2)
              {
                sub_10000D0B8(&v172, &v168, &qword_100174F70, &qword_100120FD0);
                if (!*(&v169 + 1))
                {
                  sub_10000D040(&v168, &qword_100174F70, &qword_100120FD0);
                  sub_10000D040(&v172, &qword_100174F70, &qword_100120FD0);

                  v66 = v154;
                  v63 = v153;
                  v64 = v152;
                  v65 = v151;
                  goto LABEL_70;
                }

                sub_10000D040(&v168, &qword_100174F70, &qword_100120FD0);
                sub_10000D0B8(&v172, &v168, &qword_100174F70, &qword_100120FD0);
                if (*(&v169 + 1))
                {
                  sub_100001AB4(&qword_100174F68, &unk_100120B90);
                  if (swift_dynamicCast())
                  {
                    v83 = *(v164 + 72);

                    if (v83 == *(v68 + 72))
                    {
                      goto LABEL_85;
                    }
                  }

                  v84 = *(&v173 + 1);
                  if (!*(&v173 + 1))
                  {
LABEL_90:
                    v170 = 0;
                    v168 = 0u;
                    v169 = 0u;
LABEL_91:
                    sub_1000BDB54(&v168, &v172);
                    continue;
                  }
                }

                else
                {
                  sub_10000D040(&v168, &qword_100174F70, &qword_100120FD0);
                  v84 = *(&v173 + 1);
                  if (!*(&v173 + 1))
                  {
                    goto LABEL_90;
                  }
                }

                break;
              }

              v9 = v174;
              v85 = sub_10001EAB8(&v172, v84);
              v86 = *(v84 - 8);
              v87 = *(v86 + 64);
              __chkstk_darwin(v85);
              v89 = &v147 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v86 + 16))(v89);
              (*(v9 + 32))(&v168, v84, v9);
              (*(v86 + 8))(v89, v84);
              goto LABEL_91;
            }
          }

LABEL_101:
          sub_10000CA2C();
          swift_allocError();
          *v91 = 89;
          *(v91 + 8) = 0;
          *(v91 + 16) = 0xE000000000000000;
          swift_willThrow();
          return;
        }
      }

      else
      {

        v170 = 0;
        v168 = 0u;
        v169 = 0u;
      }

      sub_10000D040(&v168, &qword_100176188, &qword_100124520);
      ++v53;
      if (v55 == v51)
      {
        goto LABEL_101;
      }
    }
  }

  v20 = *(a1 + 16);
  if (!v20)
  {

    goto LABEL_50;
  }

  v149 = active;
  v159 = v168;
  v9 = *(a1 + 24);
  v21 = swift_getObjectType();
  v22 = *(v9 + 56);
  swift_unknownObjectRetain();
  v150 = v20;
  v147 = v21;
  v148 = v9;
  v23 = v22(v21, v9);
  v24 = *(v23 + 16);
  if (v24)
  {
    a1 = 0;
    v25 = v23 + 32;
    v151 = _swiftEmptyArrayStorage;
    v26 = v159;
    v154 = v23;
    v153 = v24;
    v152 = v23 + 32;
    while (1)
    {
      if (a1 >= *(v23 + 16))
      {
        goto LABEL_132;
      }

      v27 = (v25 + 24 * a1);
      v9 = *v27;
      ++a1;
      if (*(*v27 + 88) == *(v26 + 88))
      {
        break;
      }

LABEL_20:
      if (a1 == v24)
      {
        goto LABEL_104;
      }
    }

    v28 = v27[1];
    v29 = v27[2];
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    v160 = v29;
    v161 = v28;
    if (v30)
    {
      v31 = *(v9 + 24);
      v32 = *(v9 + 72);
      if (*(v9 + 80))
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v9 + 72);
      }

      v34 = swift_getObjectType();

      sub_100052184(v33, v34, v31, &v168);
      swift_unknownObjectRelease();
    }

    else
    {
      v170 = 0;
      v168 = 0u;
      v169 = 0u;
    }

    v165 = v169;
    v164 = v168;
    v166 = v170;
    if (*(&v169 + 1))
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v174 = 0;
        v172 = 0u;
        v173 = 0u;
      }
    }

    else
    {
      sub_10000D040(&v164, &qword_100174FB0, &unk_100120FC0);
      v172 = 0u;
      v173 = 0u;
      v174 = 0;
    }

    if (!*(v160 + 16))
    {
LABEL_34:
      sub_10000D040(&v172, &qword_100174F70, &qword_100120FD0);
      v35 = v151;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v37 = v35;
      v167 = v35;
      if ((v36 & 1) == 0)
      {
        sub_100046804(0, v35[2] + 1, 1);
        v37 = v167;
      }

      v26 = v159;
      v23 = v154;
      v24 = v153;
      v25 = v152;
      v39 = v37[2];
      v38 = v37[3];
      v40 = v161;
      if (v39 >= v38 >> 1)
      {
        v50 = v161;
        sub_100046804((v38 > 1), v39 + 1, 1);
        v40 = v50;
        v25 = v152;
        v24 = v153;
        v23 = v154;
        v26 = v159;
        v37 = v167;
      }

      v37[2] = v39 + 1;
      v151 = v37;
      v41 = &v37[3 * v39];
      v41[4] = v9;
      v41[5] = v40;
      v41[6] = v160;
      goto LABEL_20;
    }

    while (2)
    {
      sub_10000D0B8(&v172, &v168, &qword_100174F70, &qword_100120FD0);
      if (!*(&v169 + 1))
      {
        sub_10000D040(&v168, &qword_100174F70, &qword_100120FD0);
        sub_10000D040(&v172, &qword_100174F70, &qword_100120FD0);

        v26 = v159;
        v23 = v154;
        v24 = v153;
        v25 = v152;
        goto LABEL_20;
      }

      sub_10000D040(&v168, &qword_100174F70, &qword_100120FD0);
      sub_10000D0B8(&v172, &v168, &qword_100174F70, &qword_100120FD0);
      if (*(&v169 + 1))
      {
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        type metadata accessor for ActiveInputTerminal();
        if (swift_dynamicCast())
        {
          v49 = *(v164 + 72);

          if (v49 == *(v161 + 72))
          {
            goto LABEL_34;
          }
        }

        v42 = *(&v173 + 1);
        if (*(&v173 + 1))
        {
LABEL_40:
          v43 = v174;
          v44 = sub_10001EAB8(&v172, v42);
          v45 = *(v42 - 8);
          v46 = *(v45 + 64);
          __chkstk_darwin(v44);
          v48 = &v147 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v45 + 16))(v48);
          (v43[5])(&v168, v42, v43);
          (*(v45 + 8))(v48, v42);
LABEL_41:
          sub_1000BDB54(&v168, &v172);
          continue;
        }
      }

      else
      {
        sub_10000D040(&v168, &qword_100174F70, &qword_100120FD0);
        v42 = *(&v173 + 1);
        if (*(&v173 + 1))
        {
          goto LABEL_40;
        }
      }

      break;
    }

    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    goto LABEL_41;
  }

  v151 = _swiftEmptyArrayStorage;
LABEL_104:

  v92 = v151[2];
  if (!v92)
  {

    sub_10000CA2C();
    swift_allocError();
    *v136 = 102;
    *(v136 + 8) = 0;
    *(v136 + 16) = 0xE000000000000000;
    swift_willThrow();

    v137 = &v171;
    goto LABEL_124;
  }

  v93 = v162;
  if (v92 != 1)
  {
    *&v172 = 0;
    *(&v172 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v94 = ActiveFunction.deviceName.getter(v147, v148);
    v96 = v95;

    *&v172 = v94;
    *(&v172 + 1) = v96;
    v97._object = 0x8000000100130150;
    v97._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v97);
    v99 = *(&v172 + 1);
    v98 = v172;
    if (qword_100173CB8 != -1)
    {
      goto LABEL_137;
    }

    while (1)
    {
      v100 = sub_10000A1BC(v155, qword_1001794F0);
      v101 = v156;
      sub_10000A2A4(v100, v156);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for AUALog(0);
      v103 = sub_10000A1BC(v102, qword_100179508);
      v104 = v98;
      v98 = v103;
      sub_100039F58(1, v101, v104, v99);

      sub_10000C9D0(v101);
      if (v151[2])
      {
        break;
      }

      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      swift_once();
    }
  }

  v105 = 1768845428;
  v106 = v151[4];
  v107 = v151[5];
  v108 = v151[6];

  v109 = objc_allocWithZone(type metadata accessor for AUAInputStream(0));
  *&v109[OBJC_IVAR___AUAInputStream_startCount] = 0;
  *&v109[OBJC_IVAR___AUAInputStream_lockDelay] = 0;
  *(&v173 + 1) = v149;
  v174 = &protocol witness table for ActiveOutputTerminal;
  *&v172 = v159;
  *(&v169 + 1) = type metadata accessor for ActiveInputTerminal();
  v170 = &protocol witness table for ActiveInputTerminal;
  *&v168 = v107;

  v110 = v157;
  v111 = v158;
  v112 = sub_1000BA920(v93, 1768845428, v106, v107, v108, &v172, &v168, v110);
  if (v111)
  {

    swift_unknownObjectRelease();

    return;
  }

  v135 = v112;

  swift_unknownObjectRelease();

LABEL_126:
  v140 = OBJC_IVAR___AUAStream_controlScope;
  swift_beginAccess();
  *&v135[v140] = v105;
  v141 = type metadata accessor for AUAStreamLockDelayProperty();
  v142 = objc_allocWithZone(v141);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v143 = objc_allocWithZone(ASDPropertyAddress);
  v144 = v135;
  v145 = [v143 initWithSelector:1968393284 scope:1735159650 element:0];
  v163.receiver = v142;
  v163.super_class = v141;
  v146 = objc_msgSendSuper2(&v163, "initWithAddress:propertyDataType:qualifierDataType:", v145, 1886155636, 0);

  if (v146)
  {

    [v144 addCustomProperty:v146];
  }

  else
  {
    __break(1u);
  }
}
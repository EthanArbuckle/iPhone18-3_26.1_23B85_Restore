@interface StoreImporterQueueCoding
- (BOOL)isDataAvailable;
- (id)initAllowDenseCoding:(BOOL)coding;
- (int)popCommand:(id *)command;
- (unint64_t)flushWithBlock:(id)block;
- (unint64_t)pushCommand:(id *)command block:(id)block;
- (unint64_t)rawDecode:(char *)decode availableLength:(unint64_t)length block:(id)block;
- (void)dealloc;
- (void)popBackToRecordedPushMarker;
- (void)recordPushMarker;
- (void)resetDecode;
- (void)resetEncode;
- (void)resetRawDecode;
@end

@implementation StoreImporterQueueCoding

- (id)initAllowDenseCoding:(BOOL)coding
{
  v6.receiver = self;
  v6.super_class = StoreImporterQueueCoding;
  v4 = [(StoreImporterQueueCoding *)&v6 init];
  if (v4)
  {
    v4->_rawQueue = sub_100005FF8(65000);
    v4->_allowDenseCoding = coding;
  }

  return v4;
}

- (void)dealloc
{
  sub_100006048(self->_rawQueue);
  v3.receiver = self;
  v3.super_class = StoreImporterQueueCoding;
  [(StoreImporterQueueCoding *)&v3 dealloc];
}

- (void)recordPushMarker
{
  self->_recordPushMarker = 1;
  self->_pushMarker = 0;
  v2 = *&self->_encodeState.uidCache[1];
  *&self->_pushEncodingState.previousOid = *&self->_encodeState.previousOid;
  *&self->_pushEncodingState.uidCache[1] = v2;
  *&self->_pushEncodingState.gidCache[1] = *&self->_encodeState.gidCache[1];
  self->_pushEncodingState.runLengthDirectoryMask = self->_encodeState.runLengthDirectoryMask;
}

- (void)popBackToRecordedPushMarker
{
  pushMarker = self->_pushMarker;
  if (pushMarker)
  {
    sub_100006694(self->_rawQueue, pushMarker);
    self->_pushMarker = 0;
  }

  v4 = *&self->_pushEncodingState.uidCache[1];
  *&self->_encodeState.previousOid = *&self->_pushEncodingState.previousOid;
  *&self->_encodeState.uidCache[1] = v4;
  *&self->_encodeState.gidCache[1] = *&self->_pushEncodingState.gidCache[1];
  self->_encodeState.runLengthDirectoryMask = self->_pushEncodingState.runLengthDirectoryMask;
}

- (unint64_t)pushCommand:(id *)command block:(id)block
{
  var8 = command->var8;
  if (command->var0)
  {
    v5 = 0;
  }

  else
  {
    v5 = var8 == 0;
  }

  if (v5)
  {
    return -1;
  }

  rawQueue = self->_rawQueue;
  if (var8)
  {
    v10 = var8 + 21;
  }

  else
  {
    v10 = 19;
  }

  v11 = sub_100006360(rawQueue, v10);
  v12 = v11;
  if (self->_recordPushMarker)
  {
    self->_pushMarker = v11;
    self->_recordPushMarker = 0;
  }

  if (!command->var0)
  {
    runLength = self->_encodeState.runLength;
    if (runLength < 1)
    {
      v17 = 0;
    }

    else
    {
      *v11 = LODWORD(self->_encodeState.runLengthDirectoryMask) + 16 * runLength - 16;
      self->_encodeState.runLength = 0;
      self->_encodeState.runLengthDirectoryMask = 0;
      v17 = 1;
    }

    v33 = v11 + v17;
    v34 = (command->var8 + 4095) & 0xFFF;
    if (v34 > 0x1F)
    {
      v35 = (v34 >> 8) | 0xFFFFFFE0;
      v36 = v33 + 2;
      v33[1] = LOBYTE(command->var8) - 1;
    }

    else
    {
      LOBYTE(v35) = (LOBYTE(command->var8) - 1) | 0xC0;
      v36 = v33 + 1;
    }

    *v33 = v35;
    memcpy(v36, command->var9, v34 + 1);
    v37 = command->var8;
    v23 = &v36[v37];
    if (v37 == 1 && !command->var9[0])
    {
      self->_encodeState.runLengthDirectoryMask = 0;
      *&self->_encodeState.uidCache[1] = 0u;
      *&self->_encodeState.gidCache[1] = 0u;
      *&self->_encodeState.previousOid = 0u;
    }

    goto LABEL_93;
  }

  uidCache = self->_encodeState.uidCache;
  v14 = command->var2 == self->_encodeState.uidCache[0] && command->var3 == self->_encodeState.gidCache[0];
  v18 = command->var1 - self->_encodeState.previousOid;
  if (!self->_allowDenseCoding)
  {
    goto LABEL_24;
  }

  if ((v18 - 1) >= 8)
  {
    v14 = 0;
  }

  if (!v14 || command->var8 || (v19 = command->var4, v19 > 1) || command->var5)
  {
LABEL_24:
    v20 = self->_encodeState.runLength;
    if (v20 < 1)
    {
      v21 = 0;
    }

    else
    {
      *v11 = LODWORD(self->_encodeState.runLengthDirectoryMask) + 16 * v20 - 16;
      self->_encodeState.runLength = 0;
      self->_encodeState.runLengthDirectoryMask = 0;
      v21 = 1;
    }

    v22 = v11 + v21;
    v23 = v11 + v21 + 2;
    v24 = command->var8;
    v25 = v24 - 1;
    v68 = (v24 + 4095) & 0xFFF;
    if (v24)
    {
      if (v68 >= 0x80)
      {
        v23 = v22 + 3;
        v22[2] = BYTE1(v68) | 0x80;
        v26 = 4;
      }

      else
      {
        v26 = 3;
      }

      *v23 = v25;
      v23 = &v22[v26];
      v27 = 128;
    }

    else
    {
      v27 = 64;
    }

    if ((v18 + 8) > 0x3F)
    {
      v29 = v18 + 512;
      if ((v18 + 512) > 0xFFF)
      {
        if ((v18 + 0x4000) >> 16)
        {
          var1 = command->var1;
          v39 = (16 * command->var4) | (4 * command->var5) | v27;
          if (HIDWORD(var1))
          {
            LOBYTE(v31) = v39 | 3;
            *v23 = var1;
            v23 += 8;
          }

          else
          {
            LOBYTE(v31) = v39 | 2;
            *v23 = var1;
            v23 += 4;
          }

          goto LABEL_44;
        }

        var5 = command->var5;
        goto LABEL_43;
      }
    }

    else
    {
      var4 = command->var4;
      if (var4 <= 1 && !command->var5)
      {
        v40 = v27 | (32 * var4);
        v41 = v40 | (v18 - 24);
        v42 = v40 | (v18 + 8);
        if (v18 <= 23)
        {
          LOBYTE(v31) = v42;
        }

        else
        {
          LOBYTE(v31) = v41;
        }

        if (v18 <= 23)
        {
          v32 = 0;
        }

        else
        {
          v32 = 64;
        }

        goto LABEL_61;
      }

      v29 = v18 + 512;
    }

    var5 = command->var5;
    if (var5)
    {
      if ((v18 + 64) <= 0xFF)
      {
        v31 = (16 * command->var4) | (4 * var5) | v27;
        *v23++ = v18 + 64;
LABEL_44:
        v32 = -64;
        goto LABEL_61;
      }

LABEL_43:
      v31 = (16 * command->var4) | (4 * var5) | v27 | 1;
      *v23 = v18 + 0x4000;
      v23 += 2;
      goto LABEL_44;
    }

    v31 = (v29 >> 8) | (16 * command->var4) | v27;
    *v23++ = v18;
    v32 = 0x80;
LABEL_61:
    v43 = 0;
    v44 = 0;
    var2 = command->var2;
    while (uidCache[v43] != var2)
    {
      --v44;
      ++v43;
      if (v44 == -4)
      {
        v46 = *uidCache;
        self->_encodeState.uidCache[3] = self->_encodeState.uidCache[2];
        *&self->_encodeState.uidCache[1] = v46;
        self->_encodeState.uidCache[0] = var2;
        v47 = command->var2;
        if (v47 == -2)
        {
          v47 = 0;
        }

        if (v47 < 0x100)
        {
          *v23 = v47;
          v48 = 4;
          goto LABEL_72;
        }

        if (v47 > 0x1FF)
        {
          if (HIWORD(v47))
          {
            *v23 = v47;
            v48 = 7;
            v51 = 4;
          }

          else
          {
            *v23 = v47;
            v48 = 6;
            v51 = 2;
          }
        }

        else
        {
          *v23 = v47;
          v48 = 5;
LABEL_72:
          v51 = 1;
        }

        v23 += v51;
        goto LABEL_75;
      }
    }

    v49 = uidCache[v43];
    if (v44)
    {
      v50 = -v44;
      memmove(&self->_encodeState.uidCache[1], uidCache, v43 * 4);
      v48 = v50;
      self->_encodeState.uidCache[0] = v49;
    }

    else
    {
      v48 = 0;
      *uidCache = v49;
    }

LABEL_75:
    v52 = 0;
    v53 = 0;
    gidCache = self->_encodeState.gidCache;
    var3 = command->var3;
    while (gidCache[v52] != var3)
    {
      --v53;
      ++v52;
      if (v53 == -4)
      {
        v56 = *gidCache;
        self->_encodeState.gidCache[3] = self->_encodeState.gidCache[2];
        *&self->_encodeState.gidCache[1] = v56;
        self->_encodeState.gidCache[0] = var3;
        v57 = command->var3;
        if (v57 == -2)
        {
          v57 = 0;
        }

        if (v57 < 0x100)
        {
          *v23 = v57;
          LOBYTE(v58) = 4;
          goto LABEL_86;
        }

        if (v57 > 0x1FF)
        {
          if (HIWORD(v57))
          {
            *v23 = v57;
            LOBYTE(v58) = 7;
            v61 = 4;
          }

          else
          {
            *v23 = v57;
            LOBYTE(v58) = 6;
            v61 = 2;
          }
        }

        else
        {
          *v23 = v57;
          LOBYTE(v58) = 5;
LABEL_86:
          v61 = 1;
        }

        v23 += v61;
        goto LABEL_90;
      }
    }

    v67 = v22;
    v59 = gidCache[v52];
    if (v53)
    {
      v58 = -v53;
      v60 = v48;
      memmove(&self->_encodeState.gidCache[1], gidCache, v52 * 4);
      v48 = v60;
      self->_encodeState.gidCache[0] = v59;
    }

    else
    {
      LOBYTE(v58) = 0;
      *gidCache = v59;
    }

    v22 = v67;
LABEL_90:
    *v22 = v31;
    v22[1] = v32 + 8 * v48 + v58;
    if (command->var8)
    {
      memcpy(v23, command->var9, v68 + 1);
      v23 += command->var8;
    }

    goto LABEL_92;
  }

  if (v18 < 2)
  {
    v65 = (v19 == 1) | (2 * self->_encodeState.runLengthDirectoryMask);
    self->_encodeState.runLengthDirectoryMask = v65;
    v66 = self->_encodeState.runLength + 1;
    self->_encodeState.runLength = v66;
    v23 = v11;
    if (v66 == 4)
    {
      *v11 = v65 + 48;
      v23 = v11 + 1;
      self->_encodeState.runLength = 0;
      self->_encodeState.runLengthDirectoryMask = 0;
    }
  }

  else
  {
    v63 = self->_encodeState.runLength;
    if (v63 < 1)
    {
      v64 = 0;
    }

    else
    {
      *v11 = LODWORD(self->_encodeState.runLengthDirectoryMask) + 16 * v63 - 16;
      self->_encodeState.runLength = 0;
      self->_encodeState.runLengthDirectoryMask = 0;
      v19 = command->var4;
      v64 = 1;
    }

    *(v11 + v64) = ((v19 == 1) | (2 * v18)) - 2;
    v23 = v11 + v64 + 1;
  }

LABEL_92:
  self->_encodeState.previousOid = command->var1;
LABEL_93:
  v15 = v23 - v12;
  if (v23 != v12)
  {
    if (block)
    {
      (*(block + 2))(block, v12, v23 - v12);
    }

    sub_100006480(self->_rawQueue, v23 - v12);
  }

  return v15;
}

- (unint64_t)flushWithBlock:(id)block
{
  if (self->_encodeState.runLength < 1)
  {
    return 0;
  }

  v5 = sub_100006360(self->_rawQueue, 1uLL);
  if (self->_recordPushMarker)
  {
    self->_pushMarker = v5;
    self->_recordPushMarker = 0;
  }

  runLength = self->_encodeState.runLength;
  if (runLength < 1)
  {
    return 0;
  }

  *v5 = LOBYTE(self->_encodeState.runLengthDirectoryMask) + 16 * runLength - 16;
  self->_encodeState.runLength = 0;
  self->_encodeState.runLengthDirectoryMask = 0;
  if (block)
  {
    (*(block + 2))(block, v5, 1);
  }

  rawQueue = self->_rawQueue;
  v8 = 1;
  sub_100006480(rawQueue, 1);
  return v8;
}

- (BOOL)isDataAvailable
{
  if (self->_decodeState.runLength > 0)
  {
    return 1;
  }

  v5[1] = v2;
  v5[2] = v3;
  v5[0] = 0;
  sub_1000060BC(self->_rawQueue, v5);
  return v5[0] != 0;
}

- (int)popCommand:(id *)command
{
  *v9 = 0;
  v5 = sub_1000060BC(self->_rawQueue, v9);
  if (self->_recordPushMarker)
  {
    self->_pushMarker = v5;
    self->_recordPushMarker = 0;
  }

  if (self->_decodeState.runLength <= 0 && *v9 == 0)
  {
    return 0;
  }

  v7 = sub_10002051C(v5, *v9, &self->_decodeState, command);
  if (v7 < 1)
  {
    if (v7)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_1000060EC(self->_rawQueue, v7);
    return 1;
  }
}

- (void)resetEncode
{
  self->_encodeState.runLengthDirectoryMask = 0;
  *&self->_encodeState.uidCache[1] = 0u;
  *&self->_encodeState.gidCache[1] = 0u;
  *&self->_encodeState.previousOid = 0u;
}

- (void)resetDecode
{
  self->_decodeState.runLengthDirectoryMask = 0;
  *&self->_decodeState.gidCache[1] = 0u;
  *&self->_decodeState.uidCache[1] = 0u;
  *&self->_decodeState.previousOid = 0u;
}

- (void)resetRawDecode
{
  self->_rawDecodeState.runLengthDirectoryMask = 0;
  *&self->_rawDecodeState.uidCache[1] = 0u;
  *&self->_rawDecodeState.gidCache[1] = 0u;
  *&self->_rawDecodeState.previousOid = 0u;
}

- (unint64_t)rawDecode:(char *)decode availableLength:(unint64_t)length block:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000209F4;
  v6[3] = &unk_100035CD0;
  v6[4] = self;
  v6[5] = block;
  return sub_100020880(decode, length, &self->_rawDecodeState, v6, block);
}

@end
@interface AXMIDIParser
- (id)parse:(const MIDIPacketList *)parse error:(id *)error;
- (int64_t)_eventTypeForStatusByte:(unsigned __int8)byte;
- (unint64_t)_expectedPacketLengthForEventType:(int64_t)type;
@end

@implementation AXMIDIParser

- (id)parse:(const MIDIPacketList *)parse error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(AXMIDIEvent);
  if (parse->numPackets != 1)
  {
    if (!parse->numPackets)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = AXMIDIErrorDomain;
      v33 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Received 0 packets"];
      v34[0] = v10;
      v11 = MEMORY[0x1E695DF20];
      v12 = v34;
      v13 = &v33;
LABEL_11:
      v18 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
      v17 = [v8 errorWithDomain:v9 code:7 userInfo:v18];
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  if (!parse->packet[0].length)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = AXMIDIErrorDomain;
    v31 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Received 0-length packet"];
    v32 = v10;
    v11 = MEMORY[0x1E695DF20];
    v12 = &v32;
    v13 = &v31;
    goto LABEL_11;
  }

  v14 = parse->packet[0].data[0];
  [(AXMIDIEvent *)v7 setChannel:[(AXMIDIParser *)self _channelForStatusByte:v14]];
  [(AXMIDIEvent *)v7 setType:[(AXMIDIParser *)self _eventTypeForStatusByte:v14]];
  v15 = [(AXMIDIParser *)self _expectedPacketLengthForEventType:[(AXMIDIEvent *)v7 type]];
  if (v15 == parse->packet[0].length)
  {
    type = [(AXMIDIEvent *)v7 type];
    v17 = 0;
    if (type <= 3)
    {
      if ((type - 1) >= 3)
      {
        goto LABEL_24;
      }

      [(AXMIDIEvent *)v7 setNote:parse->packet[0].data[1]];
      v26 = parse->packet[0].data[2];
    }

    else
    {
      if (type <= 5)
      {
        if (type == 4)
        {
          [(AXMIDIEvent *)v7 setControl:parse->packet[0].data[1]];
          [(AXMIDIEvent *)v7 setControlValue:parse->packet[0].data[2]];
        }

        else
        {
          [(AXMIDIEvent *)v7 setProgram:parse->packet[0].data[1]];
        }

        goto LABEL_23;
      }

      if (type != 6)
      {
        if (type != 7)
        {
          goto LABEL_24;
        }

        [(AXMIDIEvent *)v7 setPitchBend:parse->packet[0].data[1] | (parse->packet[0].data[2] << 7)];
        goto LABEL_23;
      }

      v26 = parse->packet[0].data[1];
    }

    [(AXMIDIEvent *)v7 setPressure:v26];
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  v19 = v15;
  v20 = MEMORY[0x1E696ABC0];
  v21 = AXMIDIErrorDomain;
  v29 = *MEMORY[0x1E696A578];
  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v19];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:parse->packet[0].length];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMIDIEvent type](v7, "type")}];
  v24 = [v22 initWithFormat:@"Expected packet to be %@ bytes, was actually %@ bytes. type: %@", v10, v18, v23, v29];
  v30 = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v17 = [v20 errorWithDomain:v21 code:7 userInfo:v25];

LABEL_12:
  if (v17)
  {

    v7 = 0;
  }

LABEL_24:
  if (error)
  {
    v27 = v17;
    *error = v17;
  }

  return v7;
}

- (int64_t)_eventTypeForStatusByte:(unsigned __int8)byte
{
  v3 = (byte >> 4) ^ 8;
  if (v3 < 7 && ((0x7Bu >> v3) & 1) != 0)
  {
    return qword_18B2F8728[v3];
  }

  else
  {
    return 8 * (byte > 0xEFu);
  }
}

- (unint64_t)_expectedPacketLengthForEventType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18B2F8760[type - 1];
  }
}

@end
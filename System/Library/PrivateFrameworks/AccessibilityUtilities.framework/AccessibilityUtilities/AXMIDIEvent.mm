@interface AXMIDIEvent
- (AXMIDIEvent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)noteDescription;
- (int64_t)ordinalChannel;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMIDIEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AXMIDIEvent);
  [(AXMIDIEvent *)v4 setChannel:[(AXMIDIEvent *)self channel]];
  [(AXMIDIEvent *)v4 setType:[(AXMIDIEvent *)self type]];
  [(AXMIDIEvent *)v4 setNote:[(AXMIDIEvent *)self note]];
  [(AXMIDIEvent *)v4 setPressure:[(AXMIDIEvent *)self pressure]];
  [(AXMIDIEvent *)v4 setControl:[(AXMIDIEvent *)self control]];
  [(AXMIDIEvent *)v4 setControlValue:[(AXMIDIEvent *)self controlValue]];
  [(AXMIDIEvent *)v4 setProgram:[(AXMIDIEvent *)self program]];
  [(AXMIDIEvent *)v4 setPitchBend:[(AXMIDIEvent *)self pitchBend]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[AXMIDIEvent channel](self forKey:{"channel"), @"midi_channel"}];
  [v4 encodeInteger:-[AXMIDIEvent type](self forKey:{"type"), @"midi_type"}];
  [v4 encodeInteger:-[AXMIDIEvent note](self forKey:{"note"), @"midi_note"}];
  [v4 encodeInteger:-[AXMIDIEvent pressure](self forKey:{"pressure"), @"midi_pressure"}];
  [v4 encodeInteger:-[AXMIDIEvent control](self forKey:{"control"), @"midi_control"}];
  [v4 encodeInteger:-[AXMIDIEvent controlValue](self forKey:{"controlValue"), @"midi_controlvalue"}];
  [v4 encodeInteger:-[AXMIDIEvent program](self forKey:{"program"), @"midi_program"}];
  [v4 encodeInteger:-[AXMIDIEvent pitchBend](self forKey:{"pitchBend"), @"midi_pitchbend"}];
}

- (AXMIDIEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXMIDIEvent;
  v5 = [(AXMIDIEvent *)&v7 init];
  if (v5)
  {
    v5->_channel = [v4 decodeIntegerForKey:@"midi_channel"];
    v5->_type = [v4 decodeIntegerForKey:@"midi_type"];
    v5->_note = [v4 decodeIntegerForKey:@"midi_note"];
    v5->_pressure = [v4 decodeIntegerForKey:@"midi_pressure"];
    v5->_control = [v4 decodeIntegerForKey:@"midi_control"];
    v5->_controlValue = [v4 decodeIntegerForKey:@"midi_controlvalue"];
    v5->_program = [v4 decodeIntegerForKey:@"midi_program"];
    v5->_pitchBend = [v4 decodeIntegerForKey:@"midi_pitchbend"];
  }

  return v5;
}

- (id)description
{
  v3 = [(AXMIDIEvent *)self type];
  v4 = 0;
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      v9 = MEMORY[0x1E696AEC0];
      if (v3 == 2)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent note](self, "note")}];
        v7 = [(AXMIDIEvent *)self noteDescription];
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
        [v9 stringWithFormat:@"Note On. note:%@ (%@) pressure:%@", v6, v7, v8];
      }

      else
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent note](self, "note")}];
        v7 = [(AXMIDIEvent *)self noteDescription];
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
        [v9 stringWithFormat:@"AfterTouch. note:%@ (%@) pressure:%@", v6, v7, v8];
      }
    }

    else
    {
      if (!v3)
      {
        v4 = @"Unknown";
        goto LABEL_24;
      }

      if (v3 != 1)
      {
        goto LABEL_24;
      }

      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent note](self, "note")}];
      v7 = [(AXMIDIEvent *)self noteDescription];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
      [v5 stringWithFormat:@"Note Off. note:%@ (%@) pressure:%@", v6, v7, v8];
    }
    v4 = ;

    goto LABEL_20;
  }

  if (v3 <= 5)
  {
    if (v3 != 4)
    {
      v10 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent program](self, "program")}];
      [v10 stringWithFormat:@"Program Change. program:%@", v6];
      v4 = LABEL_22:;
      goto LABEL_23;
    }

    v12 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent control](self, "control")}];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent controlValue](self, "controlValue")}];
    v4 = [v12 stringWithFormat:@"Control Change. control:%@ value:%@", v6, v7];
LABEL_20:

LABEL_23:
    goto LABEL_24;
  }

  switch(v3)
  {
    case 6:
      v11 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent pressure](self, "pressure")}];
      [v11 stringWithFormat:@"Channel AfterTouch. pressure:%@", v6];
      goto LABEL_22;
    case 7:
      v13 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[AXMIDIEvent pitchBend](self, "pitchBend")}];
      [v13 stringWithFormat:@"Pitch Bend. value:%@", v6];
      goto LABEL_22;
    case 8:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"System Exclusive"];
      break;
  }

LABEL_24:
  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMIDIEvent ordinalChannel](self, "ordinalChannel")}];
  v16 = [v14 stringWithFormat:@"MIDIEvent<%p>: channel:%@ type:%@", self, v15, v4];

  return v16;
}

- (int64_t)ordinalChannel
{
  result = self->_channel;
  if (result > 127)
  {
    if (result <= 2047)
    {
      if (result > 511)
      {
        if (result == 512)
        {
          return 10;
        }

        if (result == 1024)
        {
          return 11;
        }
      }

      else
      {
        if (result == 128)
        {
          return 8;
        }

        if (result == 256)
        {
          return 9;
        }
      }
    }

    else if (result < 0x2000)
    {
      if (result == 2048)
      {
        return 12;
      }

      if (result == 4096)
      {
        return 13;
      }
    }

    else
    {
      switch(result)
      {
        case 0x2000:
          return 14;
        case 0x4000:
          return 15;
        case 0x8000:
          return 16;
      }
    }

    return -1;
  }

  if (result > 7)
  {
    if (result > 31)
    {
      if (result == 32)
      {
        return 6;
      }

      if (result == 64)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 16)
      {
        return 5;
      }
    }

    return -1;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      return 2;
    }

    if (result == 4)
    {
      return 3;
    }

    return -1;
  }

  if (result)
  {
    return 1;
  }

  return result;
}

- (id)noteDescription
{
  v3 = [(AXMIDIEvent *)self noteValue];
  if (v3 > 0xB)
  {
    v4 = &stru_1EFE6D570;
  }

  else
  {
    v4 = off_1E71EB360[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXMIDIEvent noteOctave](self, "noteOctave")}];
  v7 = [v5 stringWithFormat:@"%@-%@", v4, v6];

  return v7;
}

@end